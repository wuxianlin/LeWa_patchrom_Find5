.class public Landroid/dolby/ds/Ds;
.super Ljava/lang/Object;
.source "Ds.java"


# static fields
.field public static final DS_CURRENT_FILENAME:Ljava/lang/String; = "ds1-current.xml"

.field public static final DS_STATE_FILENAME:Ljava/lang/String; = "ds1-state.xml"

.field private static final DS_VERSION_EXTERNAL:Ljava/lang/String; = "DS version 1.5.0.0"

.field private static final DS_VERSION_INTERNAL:Ljava/lang/String; = "DS version 1.5.0.0 [Build 10]"

.field private static final LPA_INVALID_SESSION_ID:I = -0x2

.field private static final TAG:Ljava/lang/String; = "Ds"

.field private static final useOffProfileForDsOff:Z


# instance fields
.field private audioSessionId_:I

.field private currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

.field private defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

.field private dsEffect_:Landroid/dolby/ds/DsEffect;

.field private dsLpaEffect_:Landroid/dolby/ds/DsEffect;

.field private isDsOn_:Z

.field private lpaAudioSessionId_:I

.field private offProfile_:Landroid/dolby/ds/DsProfileSettings;

.field private selectedProfile_:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .parameter "audioSessionId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x6

    const/4 v3, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-array v0, v1, [Landroid/dolby/ds/DsProfileSettings;

    iput-object v0, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    .line 49
    new-array v0, v1, [Landroid/dolby/ds/DsProfileSettings;

    iput-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    .line 59
    iput v3, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    .line 64
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/dolby/ds/Ds;->isDsOn_:Z

    .line 69
    iput-object v2, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    .line 88
    const/4 v0, -0x2

    iput v0, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 93
    iput-object v2, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    .line 119
    const-string v0, "Ds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating Ds effect on audioSessionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    if-gez p1, :cond_0

    .line 123
    const-string v0, "Ds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ds effect with specified session Id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") is less than zero"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_0
    return-void

    .line 128
    :cond_0
    invoke-static {}, Landroid/dolby/ds/DsPresetsConfiguration;->getDefaultSettings()[Landroid/dolby/ds/DsProfileSettings;

    move-result-object v0

    iput-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    .line 131
    invoke-static {}, Landroid/dolby/ds/DsPresetsConfiguration;->getCurrentSettings()[Landroid/dolby/ds/DsProfileSettings;

    move-result-object v0

    iput-object v0, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    .line 139
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 141
    iput p1, p0, Landroid/dolby/ds/Ds;->audioSessionId_:I

    .line 142
    new-instance v0, Landroid/dolby/ds/DsEffect;

    iget v1, p0, Landroid/dolby/ds/Ds;->audioSessionId_:I

    invoke-direct {v0, v1}, Landroid/dolby/ds/DsEffect;-><init>(I)V

    iput-object v0, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    .line 143
    invoke-direct {p0, v3}, Landroid/dolby/ds/Ds;->setInitStatus(Z)V

    goto :goto_0

    .line 147
    :cond_1
    new-instance v0, Ljava/lang/InstantiationException;

    const-string v1, "Constant AK parameters NOT defined yet."

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static populateSettings(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 9
    .parameter "defaultInStream"
    .parameter "dir"

    .prologue
    const/4 v8, 0x0

    .line 251
    const/4 v4, 0x1

    .line 252
    .local v4, ret:Z
    const-string v5, "Ds"

    const-string v6, "populateSettings"

    invoke-static {v5, v6}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ds1-current.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 255
    .local v1, dsCurSettingsPath:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "ds1-state.xml"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    .local v2, dsStatePath:Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/dolby/ds/DsStoreUtil;->storeDsPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 261
    .local v0, currentInStream:Ljava/io/FileInputStream;
    const/4 v5, 0x0

    invoke-static {v0, p0, v5}, Landroid/dolby/ds/DsPresetsConfiguration;->xmlConfigParsing(Ljava/io/InputStream;Ljava/io/InputStream;Z)Z

    move-result v4

    .line 262
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 263
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 278
    .end local v0           #currentInStream:Ljava/io/FileInputStream;
    :goto_0
    if-eqz v4, :cond_0

    .line 280
    invoke-static {v8}, Landroid/dolby/ds/DsPresetsConfiguration;->createProfileSettings(Z)Z

    move-result v4

    .line 281
    if-eqz v4, :cond_0

    .line 284
    invoke-static {}, Landroid/dolby/ds/DsPresetsConfiguration;->getParserStatusFlag()Z

    move-result v4

    .line 288
    :cond_0
    return v4

    .line 265
    :catch_0
    move-exception v3

    .line 267
    .local v3, e:Ljava/io/FileNotFoundException;
    const-string v5, "Ds"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Cannot find DS config XML file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 269
    const/4 v4, 0x0

    .line 276
    goto :goto_0

    .line 271
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v3

    .line 273
    .local v3, e:Ljava/lang/Exception;
    const-string v5, "Ds"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "populateSettings(): Exception loading "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " or parsing the file"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 275
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private recreateDsEffect()Z
    .locals 5

    .prologue
    .line 1164
    const/4 v2, 0x0

    .line 1165
    .local v2, ret:Z
    const-string v3, "Ds"

    const-string v4, "recreateDsEffect"

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1168
    :try_start_0
    iget-object v3, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    if-eqz v3, :cond_0

    .line 1170
    iget-object v3, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v3}, Landroid/dolby/ds/DsEffect;->release()V

    .line 1172
    :cond_0
    new-instance v3, Landroid/dolby/ds/DsEffect;

    iget v4, p0, Landroid/dolby/ds/Ds;->audioSessionId_:I

    invoke-direct {v3, v4}, Landroid/dolby/ds/DsEffect;-><init>(I)V

    iput-object v3, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    .line 1174
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->isLpaActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1177
    iget v1, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 1178
    .local v1, lpaAudioSessionId:I
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->destroyDsLpaEffect()V

    .line 1179
    invoke-virtual {p0, v1}, Landroid/dolby/ds/Ds;->createDsLpaEffect(I)V

    .line 1182
    .end local v1           #lpaAudioSessionId:I
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/dolby/ds/Ds;->setInitStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1183
    const/4 v2, 0x1

    .line 1190
    :goto_0
    return v2

    .line 1185
    :catch_0
    move-exception v0

    .line 1187
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Ds"

    const-string v4, "Exception in recreateDsEffect."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setInitStatus(Z)V
    .locals 6
    .parameter "useExistingState"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1200
    if-nez p1, :cond_1

    .line 1203
    invoke-static {}, Landroid/dolby/ds/DsStoreUtil;->loadDsState()[Ljava/lang/String;

    move-result-object v1

    .line 1204
    .local v1, restoredState:[Ljava/lang/String;
    aget-object v4, v1, v2

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Landroid/dolby/ds/Ds;->isDsOn_:Z

    .line 1205
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    .line 1208
    .end local v1           #restoredState:[Ljava/lang/String;
    :cond_1
    const-string v2, "Ds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restore Ds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/dolby/ds/Ds;->isDsOn_:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1209
    const-string v2, "Ds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "restore profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1214
    :try_start_0
    iget-object v2, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/dolby/ds/DsEffect;->setEnabled(Z)I

    .line 1215
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->isLpaActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1217
    iget-object v2, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/dolby/ds/DsEffect;->setEnabled(Z)I

    .line 1221
    :cond_2
    iget v2, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    invoke-virtual {p0, v2}, Landroid/dolby/ds/Ds;->setSelectedProfile(I)Z

    .line 1222
    iget-boolean v2, p0, Landroid/dolby/ds/Ds;->isDsOn_:Z

    invoke-virtual {p0, v2}, Landroid/dolby/ds/Ds;->setDsOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1229
    :goto_0
    return-void

    .line 1224
    :catch_0
    move-exception v0

    .line 1226
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Ds"

    const-string v3, "Exception in setInitStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public createDsLpaEffect(I)V
    .locals 5
    .parameter "lpaAudioSessionId"

    .prologue
    const/4 v4, -0x2

    .line 159
    const-string v1, "Ds"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Creating DsLpa effect on audioSessionId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :try_start_0
    iget v1, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    if-eq p1, v1, :cond_0

    .line 164
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->destroyDsLpaEffect()V

    .line 165
    new-instance v1, Landroid/dolby/ds/DsEffect;

    invoke-direct {v1, p1}, Landroid/dolby/ds/DsEffect;-><init>(I)V

    iput-object v1, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    .line 166
    iput p1, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 167
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Landroid/dolby/ds/Ds;->setInitStatus(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 170
    :catch_0
    move-exception v0

    .line 172
    .local v0, ex:Ljava/lang/ClassNotFoundException;
    iput v4, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 173
    const-string v1, "Ds"

    const-string v2, "createDsLpaEffect() FAILED! ClassNotFoundException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 175
    .end local v0           #ex:Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 177
    .local v0, ex:Ljava/lang/InstantiationException;
    iput v4, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 178
    const-string v1, "Ds"

    const-string v2, "createDsLpaEffect() FAILED! InstantiationException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 180
    .end local v0           #ex:Ljava/lang/InstantiationException;
    :catch_2
    move-exception v0

    .line 182
    .local v0, ex:Ljava/lang/IllegalAccessException;
    iput v4, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 183
    const-string v1, "Ds"

    const-string v2, "createDsLpaEffect() FAILED! IllegalAccessException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 185
    .end local v0           #ex:Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v0

    .line 187
    .local v0, ex:Ljava/lang/NoSuchMethodException;
    iput v4, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 188
    const-string v1, "Ds"

    const-string v2, "createDsLpaEffect() FAILED! NoSuchMethodException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    .end local v0           #ex:Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v0

    .line 192
    .local v0, ex:Ljava/lang/reflect/InvocationTargetException;
    iput v4, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 193
    const-string v1, "Ds"

    const-string v2, "createDsLpaEffect() FAILED! InvocationTargetException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 195
    .end local v0           #ex:Ljava/lang/reflect/InvocationTargetException;
    :catch_5
    move-exception v0

    .line 197
    .local v0, ex:Ljava/lang/IllegalStateException;
    iput v4, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 198
    const-string v1, "Ds"

    const-string v2, "createDsLpaEffect() FAILED! IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 200
    .end local v0           #ex:Ljava/lang/IllegalStateException;
    :catch_6
    move-exception v0

    .line 202
    .local v0, ex:Ljava/lang/Exception;
    iput v4, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 203
    const-string v1, "Ds"

    const-string v2, "createDsLpaEffect() FAILED! Exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public destroyDsLpaEffect()V
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v0}, Landroid/dolby/ds/DsEffect;->release()V

    .line 217
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    .line 218
    const/4 v0, -0x2

    iput v0, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 220
    :cond_0
    return-void
.end method

.method public getDsApParam(Ljava/lang/String;)[I
    .locals 4
    .parameter "parameter"

    .prologue
    .line 1129
    const/4 v1, 0x0

    .line 1130
    .local v1, values:[I
    const-string v2, "Ds"

    const-string v3, "getDsApParam"

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    :try_start_0
    iget-object v2, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iget v3, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Landroid/dolby/ds/DsProfileSettings;->getDsApParam(Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1142
    :goto_0
    return-object v1

    .line 1135
    :catch_0
    move-exception v0

    .line 1137
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "Ds"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1138
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1139
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDsApParamLength(Ljava/lang/String;)I
    .locals 1
    .parameter "parameter"

    .prologue
    .line 1153
    invoke-static {p1}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDsApVersion()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 760
    const-string v3, "Ds"

    const-string v4, "getDsApVersion"

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v3

    if-nez v3, :cond_0

    .line 763
    new-instance v3, Landroid/os/DeadObjectException;

    invoke-direct {v3}, Landroid/os/DeadObjectException;-><init>()V

    throw v3

    .line 766
    :cond_0
    iget-object v3, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v3}, Landroid/dolby/ds/DsEffect;->getVersion()[S

    move-result-object v1

    .line 767
    .local v1, value:[S
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "APPv1 version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 768
    .local v2, version:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 770
    aget-short v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 771
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    :cond_1
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-short v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 774
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getDsOn()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 376
    const-string v1, "Ds"

    const-string v2, "getDsOn"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v1

    if-nez v1, :cond_0

    .line 380
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    .line 391
    :cond_0
    iget-object v1, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v1}, Landroid/dolby/ds/DsEffect;->getEnabled()Z

    move-result v0

    .line 394
    .local v0, effectEnabled:Z
    return v0
.end method

.method public getDsVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 784
    const-string v0, "Ds"

    const-string v1, "getDsVersion"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 785
    const-string v0, "DS version 1.5.0.0"

    return-object v0
.end method

.method public getGeq(II)[F
    .locals 4
    .parameter "profile"
    .parameter "preset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1015
    const-string v1, "Ds"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGeq: \"profile name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " preset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    const/4 v0, 0x0

    .line 1019
    .local v0, values:[F
    if-ltz p1, :cond_1

    const/4 v1, 0x6

    if-ge p1, v1, :cond_1

    .line 1021
    if-ltz p2, :cond_0

    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    .line 1023
    iget-object v1, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Landroid/dolby/ds/DsProfileSettings;->getGeq(I)[F

    move-result-object v0

    .line 1036
    return-object v0

    .line 1027
    :cond_0
    const-string v1, "Ds"

    const-string v2, "getGeq: Invalid preset input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1033
    :cond_1
    const-string v1, "Ds"

    const-string v2, "getGeq: Invalid profile input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getIeqPreset(I)I
    .locals 3
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 844
    const/4 v0, -0x1

    .line 845
    .local v0, ret:I
    const-string v1, "Ds"

    const-string v2, "getIeqPreset"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    if-ltz p1, :cond_0

    const/4 v1, 0x6

    if-ge p1, v1, :cond_0

    .line 849
    iget-object v1, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/dolby/ds/DsProfileSettings;->getIeqPreset()I

    move-result v0

    .line 856
    return v0

    .line 853
    :cond_0
    const-string v1, "Ds"

    const-string v2, "getIeqPrest: Invalid profile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getLpaAudioSessionId()I
    .locals 1

    .prologue
    .line 239
    iget v0, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    return v0
.end method

.method public getProfileCount()I
    .locals 2

    .prologue
    .line 404
    const-string v0, "Ds"

    const-string v1, "getProfileCount"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const/4 v0, 0x6

    return v0
.end method

.method public getProfileModified(I)I
    .locals 19
    .parameter "profile"

    .prologue
    .line 870
    const-string v17, "Ds"

    const-string v18, "getProfileModified"

    invoke-static/range {v17 .. v18}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const/4 v13, 0x0

    .line 874
    .local v13, modifiedValue:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 875
    .local v5, defaultName:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 876
    .local v4, currentName:Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 878
    or-int/lit8 v13, v13, 0x2

    .line 882
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v17

    sget-object v18, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/dolby/ds/DsAkSettings;

    .line 883
    .local v3, akDefaultSettings:Landroid/dolby/ds/DsAkSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v17

    sget-object v18, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/dolby/ds/DsAkSettings;

    .line 884
    .local v2, akCurrentSettings:Landroid/dolby/ds/DsAkSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Landroid/dolby/ds/DsProfileSettings;->getParamsSaved()[Ljava/lang/Object;

    move-result-object v16

    .line 885
    .local v16, params:[Ljava/lang/Object;
    if-eqz v16, :cond_3

    .line 887
    const/4 v9, 0x0

    .local v9, i:I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_3

    .line 889
    aget-object v14, v16, v9

    check-cast v14, Ljava/lang/String;

    .line 890
    .local v14, param:Ljava/lang/String;
    invoke-static {v14}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v15

    .line 891
    .local v15, paramLen:I
    const/4 v12, 0x0

    .local v12, j:I
    :goto_1
    if-ge v12, v15, :cond_1

    .line 893
    invoke-virtual {v2, v14, v12}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v17

    invoke-virtual {v3, v14, v12}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 895
    or-int/lit8 v13, v13, 0x1

    .line 887
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 891
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 902
    .end local v9           #i:I
    .end local v12           #j:I
    .end local v14           #param:Ljava/lang/String;
    .end local v15           #paramLen:I
    :cond_3
    and-int/lit8 v17, v13, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Landroid/dolby/ds/DsProfileSettings;->getIeqPreset()I

    move-result v11

    .line 906
    .local v11, ieqDefaultIndex:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Landroid/dolby/ds/DsProfileSettings;->getIeqPreset()I

    move-result v10

    .line 907
    .local v10, ieqCurrentIndex:I
    if-eq v10, v11, :cond_4

    .line 909
    or-int/lit8 v13, v13, 0x1

    .line 913
    .end local v10           #ieqCurrentIndex:I
    .end local v11           #ieqDefaultIndex:I
    :cond_4
    and-int/lit8 v17, v13, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Landroid/dolby/ds/DsProfileSettings;->getGeqGainArray()[[S

    move-result-object v8

    .line 917
    .local v8, geqDefaultSettings:[[S
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Landroid/dolby/ds/DsProfileSettings;->getGeqGainArray()[[S

    move-result-object v7

    .line 918
    .local v7, geqCurrentSettings:[[S
    const-string v17, "gebf"

    invoke-static/range {v17 .. v17}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v6

    .line 919
    .local v6, gebfLen:I
    const/4 v9, 0x0

    .restart local v9       #i:I
    :goto_2
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v9, v0, :cond_7

    .line 921
    const/4 v12, 0x0

    .restart local v12       #j:I
    :goto_3
    if-ge v12, v6, :cond_5

    .line 923
    aget-object v17, v7, v9

    aget-short v17, v17, v12

    aget-object v18, v8, v9

    aget-short v18, v18, v12

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 925
    or-int/lit8 v13, v13, 0x1

    .line 919
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 921
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 932
    .end local v6           #gebfLen:I
    .end local v7           #geqCurrentSettings:[[S
    .end local v8           #geqDefaultSettings:[[S
    .end local v9           #i:I
    .end local v12           #j:I
    :cond_7
    return v13
.end method

.method public getProfileNames()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x6

    .line 415
    new-array v1, v4, [Ljava/lang/String;

    .line 417
    .local v1, profileNames:[Ljava/lang/String;
    const-string v2, "Ds"

    const-string v3, "getProfileNames"

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 418
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 420
    iget-object v2, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 418
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_0
    return-object v1
.end method

.method public getProfileSettings(I)Landroid/dolby/DsClientSettings;
    .locals 3
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 554
    const-string v0, "Ds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getProfileSettings: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    .line 557
    iget-object v0, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->extractClientSettings()Landroid/dolby/DsClientSettings;

    move-result-object v0

    return-object v0

    .line 561
    :cond_0
    const-string v0, "Ds"

    const-string v1, "getProfileSettings: Invalid profile input"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getSelectedProfile()I
    .locals 2

    .prologue
    .line 476
    const-string v0, "Ds"

    const-string v1, "getSelectedProfile"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    iget v0, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    return v0
.end method

.method public getVisualizerData([F[F)I
    .locals 9
    .parameter "gains"
    .parameter "excitations"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 721
    const-string v7, "Ds"

    const-string v8, "getVisualizerData"

    invoke-static {v7, v8}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v7

    if-nez v7, :cond_0

    .line 724
    new-instance v7, Landroid/os/DeadObjectException;

    invoke-direct {v7}, Landroid/os/DeadObjectException;-><init>()V

    throw v7

    .line 727
    :cond_0
    iget-object v7, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v7}, Landroid/dolby/ds/DsEffect;->getVisualizerData()[S

    move-result-object v6

    .line 728
    .local v6, visualizerData:[S
    if-nez v6, :cond_1

    .line 730
    const/4 v7, 0x0

    .line 748
    :goto_0
    return v7

    .line 733
    :cond_1
    const/high16 v5, 0x4180

    .line 734
    .local v5, scale:F
    const-string v7, "vcbg"

    invoke-static {v7}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v2

    .line 735
    .local v2, maxLen:I
    array-length v7, p1

    if-ge v7, v2, :cond_2

    array-length v4, p1

    .line 736
    .local v4, numGains:I
    :goto_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    if-ge v0, v4, :cond_3

    .line 738
    aget-short v7, v6, v0

    int-to-float v7, v7

    div-float/2addr v7, v5

    aput v7, p1, v0

    .line 736
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0           #i:I
    .end local v4           #numGains:I
    :cond_2
    move v4, v2

    .line 735
    goto :goto_1

    .line 740
    .restart local v0       #i:I
    .restart local v4       #numGains:I
    :cond_3
    array-length v7, p2

    if-ge v7, v2, :cond_4

    array-length v3, p2

    .line 741
    .local v3, numExcitations:I
    :goto_3
    const/4 v1, 0x0

    .line 742
    .local v1, index:I
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v3, :cond_5

    .line 744
    add-int v1, v0, v2

    .line 745
    aget-short v7, v6, v1

    int-to-float v7, v7

    div-float/2addr v7, v5

    aput v7, p2, v0

    .line 742
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .end local v1           #index:I
    .end local v3           #numExcitations:I
    :cond_4
    move v3, v2

    .line 740
    goto :goto_3

    .line 748
    .restart local v1       #index:I
    .restart local v3       #numExcitations:I
    :cond_5
    add-int v7, v4, v3

    goto :goto_0
.end method

.method public getVisualizerOn()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 701
    const-string v0, "Ds"

    const-string v1, "getVisualizerOn"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 704
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    .line 707
    :cond_0
    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v0}, Landroid/dolby/ds/DsEffect;->getVisualizerOn()Z

    move-result v0

    return v0
.end method

.method public isBasicProfileSettings(Ljava/lang/String;)Z
    .locals 1
    .parameter "parameter"

    .prologue
    .line 943
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLpaActive()Z
    .locals 2

    .prologue
    .line 229
    iget v0, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetProfile(I)Z
    .locals 13
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 579
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 581
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    .line 584
    :cond_0
    const/4 v11, 0x0

    .line 586
    .local v11, ret:Z
    const-string v0, "Ds"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resetProfile: \""

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v12, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v12, v12, p1

    invoke-virtual {v12}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v12, "\""

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    if-ltz p1, :cond_2

    const/4 v0, 0x6

    if-ge p1, v0, :cond_2

    .line 589
    iget-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 590
    .local v1, displayName:Ljava/lang/String;
    iget-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 591
    .local v2, description:Ljava/lang/String;
    iget-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v0

    sget-object v7, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/dolby/ds/DsAkSettings;

    .line 592
    .local v9, akSettings:Landroid/dolby/ds/DsAkSettings;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 593
    .local v3, allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    sget-object v0, Landroid/dolby/ds/DsEndpoint;->GENERIC:Landroid/dolby/ds/DsEndpoint;

    new-instance v7, Landroid/dolby/ds/DsAkSettings;

    invoke-direct {v7, v9}, Landroid/dolby/ds/DsAkSettings;-><init>(Landroid/dolby/ds/DsAkSettings;)V

    invoke-virtual {v3, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 594
    iget-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->isCustom()Z

    move-result v4

    .line 595
    .local v4, custom:Z
    iget-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->getCategory()Landroid/dolby/ds/DsProfileSettings$Category;

    move-result-object v5

    .line 596
    .local v5, category:Landroid/dolby/ds/DsProfileSettings$Category;
    iget-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->getIeqPreset()I

    move-result v6

    .line 600
    .local v6, ieqPreset:I
    :try_start_0
    new-instance v8, Ljava/util/HashSet;

    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 601
    .local v8, savedParams:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v12, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    new-instance v0, Landroid/dolby/ds/DsProfileSettings;

    const/4 v7, 0x0

    check-cast v7, [[I

    invoke-direct/range {v0 .. v8}, Landroid/dolby/ds/DsProfileSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/dolby/ds/DsProfileSettings$Category;I[[ILjava/util/HashSet;)V

    aput-object v0, v12, p1

    .line 602
    iget v0, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    if-ne p1, v0, :cond_1

    .line 604
    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    iget-object v7, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/dolby/ds/DsEffect;->setAllProfileSettings(Landroid/dolby/ds/DsProfileSettings;)I

    .line 605
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->isLpaActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 607
    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    iget-object v7, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/dolby/ds/DsEffect;->setAllProfileSettings(Landroid/dolby/ds/DsProfileSettings;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 616
    :cond_1
    const/4 v11, 0x1

    .line 623
    return v11

    .line 611
    .end local v8           #savedParams:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 613
    .local v10, e:Ljava/lang/Exception;
    const-string v0, "Ds"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 620
    .end local v1           #displayName:Ljava/lang/String;
    .end local v2           #description:Ljava/lang/String;
    .end local v3           #allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .end local v4           #custom:Z
    .end local v5           #category:Landroid/dolby/ds/DsProfileSettings$Category;
    .end local v6           #ieqPreset:I
    .end local v9           #akSettings:Landroid/dolby/ds/DsAkSettings;
    .end local v10           #e:Ljava/lang/Exception;
    :cond_2
    const-string v0, "Ds"

    const-string v7, "resetProfile: Invalid profile input"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public restoreCurrentProfiles()V
    .locals 4

    .prologue
    .line 300
    const-string v0, "Ds"

    const-string v1, "Ds resetCurrentProfiles"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    invoke-static {}, Landroid/dolby/ds/DsPresetsConfiguration;->getCurrentSettings()[Landroid/dolby/ds/DsProfileSettings;

    move-result-object v0

    iput-object v0, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    .line 302
    const-string v0, "Ds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current profile settings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iget v3, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/dolby/ds/DsProfileSettings;->getCurrentProfileSettings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/dolby/ds/Ds;->setInitStatus(Z)V

    .line 304
    return-void
.end method

.method public saveDsStateAndSettings()V
    .locals 2

    .prologue
    .line 312
    const-string v0, "Ds"

    const-string v1, "saveDsStateAndSettings"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-boolean v0, p0, Landroid/dolby/ds/Ds;->isDsOn_:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    :goto_0
    iget v1, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/dolby/ds/DsStoreUtil;->saveDsState(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    iget-object v0, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    invoke-static {v0}, Landroid/dolby/ds/DsStoreUtil;->saveDsProfileSettings([Landroid/dolby/ds/DsProfileSettings;)V

    .line 315
    return-void

    .line 313
    :cond_0
    const-string v0, "0"

    goto :goto_0
.end method

.method public setDsApParam(Ljava/lang/String;[I)Z
    .locals 11
    .parameter "parameter"
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1051
    const/4 v6, 0x0

    .line 1053
    .local v6, ret:Z
    const-string v8, "Ds"

    const-string v9, "setDsApParam"

    invoke-static {v8, v9}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1054
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1056
    new-instance v8, Landroid/os/DeadObjectException;

    invoke-direct {v8}, Landroid/os/DeadObjectException;-><init>()V

    throw v8

    .line 1058
    :cond_0
    const-string v8, "iebt"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1060
    const-string v8, "Ds"

    const-string v9, "iebt is NOT allowed to be set"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1061
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "Fail to set the parameter"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1063
    :cond_1
    const-string v8, "gebg"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1065
    const-string v8, "Ds"

    const-string v9, "gebg is NOT allowed to be set by setDsApParam, please use setGeq instead"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "Fail to set the parameter"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1069
    :cond_2
    array-length v8, p2

    new-array v7, v8, [S

    .line 1070
    .local v7, settings:[S
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v8, p2

    if-ge v2, v8, :cond_3

    .line 1072
    aget v8, p2, v2

    int-to-short v8, v8

    aput-short v8, v7, v2

    .line 1070
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1076
    :cond_3
    :try_start_0
    iget-object v8, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iget v9, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    aget-object v8, v8, v9

    invoke-virtual {v8, p1, v7}, Landroid/dolby/ds/DsProfileSettings;->setDsApParam(Ljava/lang/String;[S)V

    .line 1077
    invoke-static {p1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v4

    .line 1078
    .local v4, paramIndex:I
    iget-object v8, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    const/4 v9, 0x0

    sget-object v10, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v8, v4, v9, v7, v10}, Landroid/dolby/ds/DsEffect;->setSingleSetting(II[SLandroid/dolby/ds/AudioDevice;)I

    move-result v3

    .line 1079
    .local v3, iRet:I
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->isLpaActive()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1081
    iget-object v8, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    const/4 v9, 0x0

    sget-object v10, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v8, v4, v9, v7, v10}, Landroid/dolby/ds/DsEffect;->setSingleSetting(II[SLandroid/dolby/ds/AudioDevice;)I

    move-result v8

    or-int/2addr v3, v8

    .line 1083
    :cond_4
    if-nez v3, :cond_5

    .line 1085
    const/4 v6, 0x1

    .line 1087
    :cond_5
    invoke-virtual {p0, p1}, Landroid/dolby/ds/Ds;->isBasicProfileSettings(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1090
    const/4 v5, 0x0

    .line 1091
    .local v5, paramModified:Z
    iget-object v8, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iget v9, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v8

    sget-object v9, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsAkSettings;

    .line 1092
    .local v0, defaultSettings:Landroid/dolby/ds/DsAkSettings;
    const/4 v2, 0x0

    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_6

    .line 1094
    aget-short v8, v7, v2

    invoke-virtual {v0, p1, v2}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v9

    if-eq v8, v9, :cond_8

    .line 1096
    const/4 v5, 0x1

    .line 1101
    :cond_6
    if-eqz v5, :cond_9

    .line 1103
    iget-object v8, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iget v9, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    aget-object v8, v8, v9

    invoke-virtual {v8, p1}, Landroid/dolby/ds/DsProfileSettings;->addParamSaved(Ljava/lang/String;)V

    .line 1118
    .end local v0           #defaultSettings:Landroid/dolby/ds/DsAkSettings;
    .end local v5           #paramModified:Z
    :cond_7
    :goto_2
    return v6

    .line 1092
    .restart local v0       #defaultSettings:Landroid/dolby/ds/DsAkSettings;
    .restart local v5       #paramModified:Z
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1107
    :cond_9
    iget-object v8, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iget v9, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    aget-object v8, v8, v9

    invoke-virtual {v8, p1}, Landroid/dolby/ds/DsProfileSettings;->removeParamSaved(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1111
    .end local v0           #defaultSettings:Landroid/dolby/ds/DsAkSettings;
    .end local v3           #iRet:I
    .end local v4           #paramIndex:I
    .end local v5           #paramModified:Z
    :catch_0
    move-exception v1

    .line 1113
    .local v1, e:Ljava/lang/Exception;
    const-string v8, "Ds"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1115
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string v9, "Fail to set the parameter"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public setDsOn(Z)V
    .locals 3
    .parameter "on"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 326
    const-string v0, "Ds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDsOn: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 329
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    .line 332
    :cond_0
    iput-boolean p1, p0, Landroid/dolby/ds/Ds;->isDsOn_:Z

    .line 358
    const-string v0, "Ds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ds on/off setEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v0, p1}, Landroid/dolby/ds/DsEffect;->setEnabled(Z)I

    .line 360
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->isLpaActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v0, p1}, Landroid/dolby/ds/DsEffect;->setEnabled(Z)I

    .line 365
    :cond_1
    return-void
.end method

.method public setGeq(II[F)Z
    .locals 8
    .parameter "profile"
    .parameter "preset"
    .parameter "geqBandGains"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 959
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 961
    new-instance v4, Landroid/os/DeadObjectException;

    invoke-direct {v4}, Landroid/os/DeadObjectException;-><init>()V

    throw v4

    .line 964
    :cond_0
    const/4 v2, 0x0

    .line 966
    .local v2, ret:Z
    const-string v4, "Ds"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setGeq: \"profile name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " preset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 967
    if-ltz p1, :cond_4

    const/4 v4, 0x6

    if-ge p1, v4, :cond_4

    .line 969
    if-ltz p2, :cond_3

    const/4 v4, 0x4

    if-ge p2, v4, :cond_3

    .line 971
    const/4 v0, 0x0

    .line 972
    .local v0, iRet:I
    iget-object v4, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v4, v4, p1

    invoke-virtual {v4, p2, p3}, Landroid/dolby/ds/DsProfileSettings;->setGeq(I[F)[S

    move-result-object v3

    .line 973
    .local v3, values:[S
    iget v4, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    if-ne v4, p1, :cond_1

    .line 976
    const-string v4, "gebg"

    invoke-static {v4}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    .line 978
    .local v1, paramIndex:I
    iget-object v4, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    sget-object v5, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v4, v1, v7, v3, v5}, Landroid/dolby/ds/DsEffect;->setSingleSetting(II[SLandroid/dolby/ds/AudioDevice;)I

    move-result v0

    .line 979
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->isLpaActive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 981
    iget-object v4, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    sget-object v5, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v4, v1, v7, v3, v5}, Landroid/dolby/ds/DsEffect;->setSingleSetting(II[SLandroid/dolby/ds/AudioDevice;)I

    move-result v4

    or-int/2addr v0, v4

    .line 984
    .end local v1           #paramIndex:I
    :cond_1
    if-nez v0, :cond_2

    .line 986
    const/4 v2, 0x1

    .line 1000
    :cond_2
    return v2

    .line 991
    .end local v0           #iRet:I
    .end local v3           #values:[S
    :cond_3
    const-string v4, "Ds"

    const-string v5, "setGeq: Invalid Ieq preset input"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 997
    :cond_4
    const-string v4, "Ds"

    const-string v5, "setGeq: Invalid profile input"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
.end method

.method public setIeqPreset(II)Z
    .locals 5
    .parameter "profile"
    .parameter "preset"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 801
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 803
    new-instance v2, Landroid/os/DeadObjectException;

    invoke-direct {v2}, Landroid/os/DeadObjectException;-><init>()V

    throw v2

    .line 806
    :cond_0
    const/4 v1, 0x0

    .line 807
    .local v1, ret:Z
    const-string v2, "Ds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setIeqPreset: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 809
    if-ltz p1, :cond_2

    const/4 v2, 0x6

    if-ge p1, v2, :cond_2

    .line 811
    if-ltz p2, :cond_3

    const/4 v2, 0x4

    if-ge p2, v2, :cond_3

    .line 813
    iget-object v2, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v2, v2, p1

    invoke-virtual {v2, p2}, Landroid/dolby/ds/DsProfileSettings;->setIeqPreset(I)V

    .line 814
    iget-object v2, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    iget-object v3, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/dolby/ds/DsEffect;->setAllProfileSettings(Landroid/dolby/ds/DsProfileSettings;)I

    move-result v0

    .line 815
    .local v0, iRet:I
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->isLpaActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 817
    iget-object v2, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    iget-object v3, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/dolby/ds/DsEffect;->setAllProfileSettings(Landroid/dolby/ds/DsProfileSettings;)I

    move-result v2

    or-int/2addr v0, v2

    .line 819
    :cond_1
    if-nez v0, :cond_2

    .line 821
    const/4 v1, 0x1

    .line 830
    .end local v0           #iRet:I
    :cond_2
    return v1

    .line 826
    :cond_3
    const-string v2, "Ds"

    const-string v3, "setIeqPreset: Invalid profile input"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 827
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public setProfileName(ILjava/lang/String;)Z
    .locals 4
    .parameter "profile"
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 639
    const-string v1, "Ds"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setProfileNames: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const/4 v0, 0x0

    .line 643
    .local v0, ret:Z
    if-eqz p2, :cond_0

    .line 645
    if-ltz p1, :cond_2

    const/4 v1, 0x6

    if-ge p1, v1, :cond_2

    .line 647
    const/4 v1, 0x4

    if-lt p1, v1, :cond_1

    .line 649
    iget-object v1, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Landroid/dolby/ds/DsProfileSettings;->setDisplayName(Ljava/lang/String;)V

    .line 651
    const/4 v0, 0x1

    .line 665
    :cond_0
    return v0

    .line 655
    :cond_1
    const-string v1, "Ds"

    const-string v2, "setProfileName: Name of this Profile is not settable"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 661
    :cond_2
    const-string v1, "Ds"

    const-string v2, "setProfileName: Invalid profile input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public setProfileSettings(ILandroid/dolby/DsClientSettings;)Z
    .locals 13
    .parameter "profile"
    .parameter "clientSettings"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 493
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v10

    if-nez v10, :cond_0

    .line 495
    new-instance v10, Landroid/os/DeadObjectException;

    invoke-direct {v10}, Landroid/os/DeadObjectException;-><init>()V

    throw v10

    .line 498
    :cond_0
    const/4 v8, 0x0

    .line 500
    .local v8, ret:Z
    const-string v10, "Ds"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setProfileSettings: \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v12, v12, p1

    invoke-virtual {v12}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    if-ltz p1, :cond_6

    const/4 v10, 0x6

    if-ge p1, v10, :cond_6

    .line 503
    const/4 v2, 0x0

    .line 504
    .local v2, iRet:I
    iget-object v10, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v10, v10, p1

    invoke-virtual {v10, p2}, Landroid/dolby/ds/DsProfileSettings;->updateFromClientSettings(Landroid/dolby/DsClientSettings;)Ljava/util/ArrayList;

    move-result-object v7

    .line 507
    .local v7, paramsChanged:Ljava/util/ArrayList;
    iget-object v10, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v10

    sget-object v11, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsAkSettings;

    .line 508
    .local v0, akSettings:Landroid/dolby/ds/DsAkSettings;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 509
    .local v3, iter:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 511
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 512
    .local v5, param:Ljava/lang/String;
    invoke-static {v5}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v4

    .line 513
    .local v4, len:I
    new-array v9, v4, [S

    .line 514
    .local v9, values:[S
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 515
    invoke-virtual {v0, v5, v1}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v10

    aput-short v10, v9, v1

    .line 514
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 516
    :cond_2
    const-string v10, "Ds"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Updating parameter "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " with new value/values"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 517
    iget v10, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    if-ne v10, p1, :cond_1

    .line 519
    invoke-static {v5}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v6

    .line 520
    .local v6, paramIndex:I
    iget-object v10, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    const/4 v11, 0x0

    sget-object v12, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v10, v6, v11, v9, v12}, Landroid/dolby/ds/DsEffect;->setSingleSetting(II[SLandroid/dolby/ds/AudioDevice;)I

    move-result v2

    .line 521
    if-eqz v2, :cond_5

    .line 531
    .end local v1           #i:I
    .end local v4           #len:I
    .end local v5           #param:Ljava/lang/String;
    .end local v6           #paramIndex:I
    .end local v9           #values:[S
    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 533
    const/4 v8, 0x1

    .line 541
    :cond_4
    return v8

    .line 523
    .restart local v1       #i:I
    .restart local v4       #len:I
    .restart local v5       #param:Ljava/lang/String;
    .restart local v6       #paramIndex:I
    .restart local v9       #values:[S
    :cond_5
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->isLpaActive()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 525
    iget-object v10, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    const/4 v11, 0x0

    sget-object v12, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v10, v6, v11, v9, v12}, Landroid/dolby/ds/DsEffect;->setSingleSetting(II[SLandroid/dolby/ds/AudioDevice;)I

    move-result v2

    .line 526
    if-eqz v2, :cond_1

    goto :goto_1

    .line 538
    .end local v0           #akSettings:Landroid/dolby/ds/DsAkSettings;
    .end local v1           #i:I
    .end local v2           #iRet:I
    .end local v3           #iter:Ljava/util/Iterator;
    .end local v4           #len:I
    .end local v5           #param:Ljava/lang/String;
    .end local v6           #paramIndex:I
    .end local v7           #paramsChanged:Ljava/util/ArrayList;
    .end local v9           #values:[S
    :cond_6
    const-string v10, "Ds"

    const-string v11, "setProfileSettings: Invalid profile input"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10
.end method

.method public setSelectedProfile(I)Z
    .locals 5
    .parameter "profile"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 438
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 440
    new-instance v2, Landroid/os/DeadObjectException;

    invoke-direct {v2}, Landroid/os/DeadObjectException;-><init>()V

    throw v2

    .line 443
    :cond_0
    const/4 v1, 0x0

    .line 445
    .local v1, ret:Z
    if-ltz p1, :cond_3

    const/4 v2, 0x6

    if-ge p1, v2, :cond_3

    .line 447
    const-string v2, "Ds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setSelectedProfile: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 449
    iget-object v2, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    iget-object v3, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/dolby/ds/DsEffect;->setAllProfileSettings(Landroid/dolby/ds/DsProfileSettings;)I

    move-result v0

    .line 450
    .local v0, iRet:I
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->isLpaActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 452
    iget-object v2, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    iget-object v3, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/dolby/ds/DsEffect;->setAllProfileSettings(Landroid/dolby/ds/DsProfileSettings;)I

    move-result v2

    or-int/2addr v0, v2

    .line 454
    :cond_1
    if-nez v0, :cond_2

    .line 456
    iput p1, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    .line 457
    const/4 v1, 0x1

    .line 466
    :cond_2
    return v1

    .line 462
    .end local v0           #iRet:I
    :cond_3
    const-string v2, "Ds"

    const-string v3, "setSelectedProfile: Invalid profile input"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public setVisualizerOn(Z)I
    .locals 3
    .parameter "enable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 682
    const-string v0, "Ds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVisualizerOn: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 685
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    .line 689
    :cond_0
    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v0, p1}, Landroid/dolby/ds/DsEffect;->setVisualizerOn(Z)I

    move-result v0

    return v0
.end method

.method public validateDsEffect()Z
    .locals 3

    .prologue
    .line 1238
    iget-object v1, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v1}, Landroid/dolby/ds/DsEffect;->hasControl()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v1}, Landroid/dolby/ds/DsEffect;->hasControl()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 1240
    .local v0, ret:Z
    :goto_0
    if-nez v0, :cond_1

    .line 1242
    const-string v1, "Ds"

    const-string v2, "Cannot control the DsEffect, trying to recreate..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    invoke-direct {p0}, Landroid/dolby/ds/Ds;->recreateDsEffect()Z

    move-result v0

    .line 1246
    :cond_1
    return v0

    .line 1238
    .end local v0           #ret:Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

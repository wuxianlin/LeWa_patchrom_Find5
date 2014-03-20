.class public Landroid/dolby/ds/DsPresetsConfiguration;
.super Ljava/lang/Object;
.source "DsPresetsConfiguration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DsPresetsConfiguration"

.field private static currentProfiles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/dolby/ds/DsProfileSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultProfiles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/dolby/ds/DsProfileSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static ieqSettingsAdded:Z

.field private static offProfile_:Landroid/dolby/ds/DsProfileSettings;

.field private static xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;

.field private static xmlParserDefault:Landroid/dolby/ds/DsConfigParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Landroid/dolby/ds/DsPresetsConfiguration;->ieqSettingsAdded:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addIeqSettings()V
    .locals 8

    .prologue
    .line 150
    sget-object v7, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    invoke-virtual {v7}, Landroid/dolby/ds/DsConfigParser;->getIeqSettingArray()[[I

    move-result-object v4

    .line 151
    .local v4, ieqSettings:[[I
    const/4 v2, 0x0

    .line 152
    .local v2, ieqIndex:I
    if-eqz v4, :cond_1

    .line 154
    move-object v0, v4

    .local v0, arr$:[[I
    array-length v5, v0

    .local v5, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    move v3, v2

    .end local v2           #ieqIndex:I
    .local v3, ieqIndex:I
    :goto_0
    if-ge v1, v5, :cond_0

    aget-object v6, v0, v1

    .line 155
    .local v6, settings:[I
    add-int/lit8 v2, v3, 0x1

    .end local v3           #ieqIndex:I
    .restart local v2       #ieqIndex:I
    invoke-static {v3, v6}, Landroid/dolby/ds/DsProfileSettings;->setIeqBandTargets(I[I)V

    .line 154
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2           #ieqIndex:I
    .restart local v3       #ieqIndex:I
    goto :goto_0

    .end local v6           #settings:[I
    :cond_0
    move v2, v3

    .line 157
    .end local v0           #arr$:[[I
    .end local v1           #i$:I
    .end local v3           #ieqIndex:I
    .end local v5           #len$:I
    .restart local v2       #ieqIndex:I
    :cond_1
    return-void
.end method

.method private static addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V
    .locals 22
    .parameter "name"
    .parameter "category"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 179
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Landroid/dolby/ds/DsConfigParser;->getSettingArray(Ljava/lang/String;Z)[[I

    move-result-object v21

    .line 180
    .local v21, profileSettings:[[I
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 181
    .local v20, profileName:Ljava/lang/String;
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingIeq(Ljava/lang/String;)I

    move-result v19

    .line 182
    .local v19, profileIeq:I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 183
    .local v5, allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    if-eqz v21, :cond_5

    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 187
    :try_start_0
    sget-boolean v2, Landroid/dolby/ds/DsPresetsConfiguration;->ieqSettingsAdded:Z

    if-nez v2, :cond_0

    .line 189
    invoke-static {}, Landroid/dolby/ds/DsPresetsConfiguration;->addIeqSettings()V

    .line 190
    const/4 v2, 0x1

    sput-boolean v2, Landroid/dolby/ds/DsPresetsConfiguration;->ieqSettingsAdded:Z

    .line 192
    :cond_0
    sget-object v2, Landroid/dolby/ds/DsEndpoint;->GENERIC:Landroid/dolby/ds/DsEndpoint;

    new-instance v3, Landroid/dolby/ds/DsAkSettings;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Landroid/dolby/ds/DsAkSettings;-><init>([[I)V

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    sget-object v11, Landroid/dolby/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    new-instance v2, Landroid/dolby/ds/DsProfileSettings;

    if-eqz v20, :cond_1

    move-object/from16 v3, v20

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The preset loaded for"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    const/4 v7, -0x1

    move/from16 v0, v19

    if-eq v0, v7, :cond_2

    move/from16 v8, v19

    :goto_1
    const/4 v9, 0x0

    check-cast v9, [[I

    const/4 v10, 0x0

    move-object/from16 v7, p1

    invoke-direct/range {v2 .. v10}, Landroid/dolby/ds/DsProfileSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/dolby/ds/DsProfileSettings$Category;I[[ILjava/util/HashSet;)V

    invoke-virtual {v11, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Landroid/dolby/ds/DsConfigParser;->getSettingArray(Ljava/lang/String;Z)[[I

    move-result-object v17

    .line 198
    .local v17, currentSettings:[[I
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;

    invoke-virtual {v2}, Landroid/dolby/ds/DsConfigParser;->getSavedParams()Ljava/util/HashSet;

    move-result-object v14

    .line 199
    .local v14, savedParams:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 200
    .local v16, currentName:Ljava/lang/String;
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingIeq(Ljava/lang/String;)I

    move-result v15

    .line 201
    .local v15, currentIeq:I
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/dolby/ds/DsConfigParser;->getGeqSettingArray(Ljava/lang/String;)[[I

    move-result-object v13

    .line 203
    .local v13, geqSettings:[[I
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Landroid/dolby/ds/DsPresetsConfiguration;->combineSettings([[I[[I)[[I

    move-result-object v21

    .line 204
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Landroid/dolby/ds/DsPresetsConfiguration;->resolveName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 205
    move/from16 v0, v19

    invoke-static {v0, v15}, Landroid/dolby/ds/DsPresetsConfiguration;->resolveIeqPreset(II)I

    move-result v19

    .line 207
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    .end local v5           #allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .local v9, allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    :try_start_1
    sget-object v2, Landroid/dolby/ds/DsEndpoint;->GENERIC:Landroid/dolby/ds/DsEndpoint;

    new-instance v3, Landroid/dolby/ds/DsAkSettings;

    move-object/from16 v0, v21

    invoke-direct {v3, v0}, Landroid/dolby/ds/DsAkSettings;-><init>([[I)V

    invoke-virtual {v9, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    new-instance v6, Landroid/dolby/ds/DsProfileSettings;

    if-eqz v20, :cond_3

    move-object/from16 v7, v20

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The current settings loaded for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x1

    const/4 v3, -0x1

    move/from16 v0, v19

    if-eq v0, v3, :cond_4

    move/from16 v12, v19

    :goto_3
    move-object/from16 v11, p1

    invoke-direct/range {v6 .. v14}, Landroid/dolby/ds/DsProfileSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/dolby/ds/DsProfileSettings$Category;I[[ILjava/util/HashSet;)V

    invoke-virtual {v2, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 223
    return-void

    .end local v9           #allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .end local v13           #geqSettings:[[I
    .end local v14           #savedParams:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15           #currentIeq:I
    .end local v16           #currentName:Ljava/lang/String;
    .end local v17           #currentSettings:[[I
    .restart local v5       #allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    :cond_1
    move-object/from16 v3, p0

    .line 193
    goto/16 :goto_0

    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1

    .end local v5           #allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .restart local v9       #allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .restart local v13       #geqSettings:[[I
    .restart local v14       #savedParams:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v15       #currentIeq:I
    .restart local v16       #currentName:Ljava/lang/String;
    .restart local v17       #currentSettings:[[I
    :cond_3
    move-object/from16 v7, p0

    .line 209
    goto :goto_2

    :cond_4
    const/4 v12, 0x0

    goto :goto_3

    .line 212
    .end local v9           #allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .end local v13           #geqSettings:[[I
    .end local v14           #savedParams:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v15           #currentIeq:I
    .end local v16           #currentName:Ljava/lang/String;
    .end local v17           #currentSettings:[[I
    .restart local v5       #allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    :catch_0
    move-exception v18

    .line 214
    .local v18, e:Ljava/lang/Exception;
    :goto_4
    const-string v2, "DsPresetsConfiguration"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Exception in creating profile settings"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 220
    .end local v18           #e:Ljava/lang/Exception;
    :cond_5
    const-string v2, "DsPresetsConfiguration"

    const-string v3, "Constant AK parameters NOT defined, or profile settings NULL."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "Settings are NOT ready yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 212
    .end local v5           #allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .restart local v9       #allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .restart local v13       #geqSettings:[[I
    .restart local v14       #savedParams:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v15       #currentIeq:I
    .restart local v16       #currentName:Ljava/lang/String;
    .restart local v17       #currentSettings:[[I
    :catch_1
    move-exception v18

    move-object v5, v9

    .end local v9           #allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .restart local v5       #allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    goto :goto_4
.end method

.method private static addOffProfileSettings()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 240
    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    const-string v1, "off"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/dolby/ds/DsConfigParser;->getSettingArray(Ljava/lang/String;Z)[[I

    move-result-object v12

    .line 241
    .local v12, profileSettings:[[I
    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 242
    .local v11, profileName:Ljava/lang/String;
    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingIeq(Ljava/lang/String;)I

    move-result v10

    .line 243
    .local v10, profileIeq:I
    if-eqz v12, :cond_2

    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 247
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 248
    .local v3, allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    sget-object v0, Landroid/dolby/ds/DsEndpoint;->GENERIC:Landroid/dolby/ds/DsEndpoint;

    new-instance v1, Landroid/dolby/ds/DsAkSettings;

    invoke-direct {v1, v12}, Landroid/dolby/ds/DsAkSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    new-instance v0, Landroid/dolby/ds/DsProfileSettings;

    if-eqz v11, :cond_1

    move-object v1, v11

    :goto_0
    const-string v2, "The setting used for switching off Ds effect."

    const/4 v4, 0x0

    sget-object v5, Landroid/dolby/ds/DsProfileSettings$Category;->CUSTOMIZED:Landroid/dolby/ds/DsProfileSettings$Category;

    const/4 v7, -0x1

    if-eq v10, v7, :cond_0

    move v6, v10

    :cond_0
    const/4 v7, 0x0

    check-cast v7, [[I

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/dolby/ds/DsProfileSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/dolby/ds/DsProfileSettings$Category;I[[ILjava/util/HashSet;)V

    sput-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->offProfile_:Landroid/dolby/ds/DsProfileSettings;

    .line 263
    return-void

    .line 249
    :cond_1
    const-string v1, "off"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 252
    .end local v3           #allSettings:Ljava/util/HashMap;,"Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    :catch_0
    move-exception v9

    .line 254
    .local v9, e:Ljava/lang/Exception;
    const-string v0, "DsPresetsConfiguration"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Exception in creating off profile settings"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    .end local v9           #e:Ljava/lang/Exception;
    :cond_2
    const-string v0, "DsPresetsConfiguration"

    const-string v1, "Constant AK parameters NOT defined, or profile settings NULL."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Settings are NOT ready yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static combineSettings([[I[[I)[[I
    .locals 5
    .parameter "defaultSettings"
    .parameter "currentSettings"

    .prologue
    const/4 v4, 0x0

    .line 276
    if-nez p0, :cond_0

    move v1, v4

    .line 277
    .local v1, defaultLength:I
    :goto_0
    if-nez p1, :cond_1

    move v0, v4

    .line 278
    .local v0, currentLength:I
    :goto_1
    add-int v3, v1, v0

    .line 280
    .local v3, settingLength:I
    if-nez v3, :cond_2

    .line 281
    const/4 v4, 0x0

    check-cast v4, [[I

    .line 290
    :goto_2
    return-object v4

    .line 276
    .end local v0           #currentLength:I
    .end local v1           #defaultLength:I
    .end local v3           #settingLength:I
    :cond_0
    array-length v1, p0

    goto :goto_0

    .line 277
    .restart local v1       #defaultLength:I
    :cond_1
    array-length v0, p1

    goto :goto_1

    .line 283
    .restart local v0       #currentLength:I
    .restart local v3       #settingLength:I
    :cond_2
    new-array v2, v3, [[I

    .line 285
    .local v2, settingArray:[[I
    if-eqz v1, :cond_3

    .line 286
    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 287
    :cond_3
    if-eqz v0, :cond_4

    .line 288
    invoke-static {p1, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    move-object v4, v2

    .line 290
    goto :goto_2
.end method

.method static createProfileSettings(Z)Z
    .locals 5
    .parameter "useOffProfileForDsOff"

    .prologue
    .line 88
    const/4 v1, 0x1

    .line 93
    .local v1, ret:Z
    :try_start_0
    sget-object v3, Landroid/dolby/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 94
    sget-object v3, Landroid/dolby/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->clear()V

    .line 95
    sget-object v3, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    sget-object v4, Landroid/dolby/ds/DsProfileSettings$Category;->MOVIE:Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v3, v4}, Landroid/dolby/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V

    .line 96
    sget-object v3, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    sget-object v4, Landroid/dolby/ds/DsProfileSettings$Category;->MUSIC:Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v3, v4}, Landroid/dolby/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V

    .line 97
    sget-object v3, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v3, v3, v4

    sget-object v4, Landroid/dolby/ds/DsProfileSettings$Category;->GAME:Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v3, v4}, Landroid/dolby/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V

    .line 98
    sget-object v3, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v4, 0x3

    aget-object v3, v3, v4

    sget-object v4, Landroid/dolby/ds/DsProfileSettings$Category;->VOICE:Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v3, v4}, Landroid/dolby/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V

    .line 99
    sget-object v3, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    sget-object v4, Landroid/dolby/ds/DsProfileSettings$Category;->CUSTOMIZED:Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v3, v4}, Landroid/dolby/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V

    .line 100
    sget-object v3, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    sget-object v4, Landroid/dolby/ds/DsProfileSettings$Category;->CUSTOMIZED:Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v3, v4}, Landroid/dolby/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V

    .line 101
    if-eqz p0, :cond_0

    .line 102
    invoke-static {}, Landroid/dolby/ds/DsPresetsConfiguration;->addOffProfileSettings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    move v2, v1

    .line 111
    .end local v1           #ret:Z
    .local v2, ret:I
    :goto_0
    return v2

    .line 104
    .end local v2           #ret:I
    .restart local v1       #ret:Z
    :catch_0
    move-exception v0

    .line 106
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "DsPresetsConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v1, 0x0

    move v2, v1

    .line 108
    .restart local v2       #ret:I
    goto :goto_0
.end method

.method public static getCurrentSettings()[Landroid/dolby/ds/DsProfileSettings;
    .locals 2

    .prologue
    .line 131
    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    sget-object v1, Landroid/dolby/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Landroid/dolby/ds/DsProfileSettings;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/dolby/ds/DsProfileSettings;

    return-object v0
.end method

.method public static getDefaultSettings()[Landroid/dolby/ds/DsProfileSettings;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    sget-object v1, Landroid/dolby/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Landroid/dolby/ds/DsProfileSettings;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/dolby/ds/DsProfileSettings;

    return-object v0
.end method

.method public static getOffProfileSettings()Landroid/dolby/ds/DsProfileSettings;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->offProfile_:Landroid/dolby/ds/DsProfileSettings;

    return-object v0
.end method

.method public static getParserStatusFlag()Z
    .locals 1

    .prologue
    .line 77
    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    invoke-virtual {v0}, Landroid/dolby/ds/DsConfigParser;->getParserStatusFlag()Z

    move-result v0

    return v0
.end method

.method private static resolveIeqPreset(II)I
    .locals 1
    .parameter "defaultIeq"
    .parameter "currentIeq"

    .prologue
    .line 318
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .end local p1
    :goto_0
    return p1

    .restart local p1
    :cond_0
    move p1, p0

    goto :goto_0
.end method

.method private static resolveName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "defaultName"
    .parameter "currentName"

    .prologue
    .line 304
    if-eqz p1, :cond_0

    .end local p1
    :goto_0
    return-object p1

    .restart local p1
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static xmlConfigParsing(Ljava/io/InputStream;Ljava/io/InputStream;Z)Z
    .locals 4
    .parameter "currentSettings"
    .parameter "defaultSettings"
    .parameter "useOffProfileForDsOff"

    .prologue
    .line 43
    const/4 v1, 0x1

    .line 49
    .local v1, ret:Z
    :try_start_0
    new-instance v2, Landroid/dolby/ds/DsConfigParser;

    invoke-direct {v2, p0, p2}, Landroid/dolby/ds/DsConfigParser;-><init>(Ljava/io/InputStream;Z)V

    sput-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    :try_start_1
    new-instance v2, Landroid/dolby/ds/DsConfigParser;

    invoke-direct {v2, p1, p2}, Landroid/dolby/ds/DsConfigParser;-><init>(Ljava/io/InputStream;Z)V

    sput-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    :goto_1
    return v1

    .line 51
    :catch_0
    move-exception v0

    .line 53
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v2, "DsPresetsConfiguration"

    const-string v3, "The current settings are invalid. The default settings will be used."

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 61
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 63
    .restart local v0       #e:Ljava/lang/IllegalArgumentException;
    const-string v2, "DsPresetsConfiguration"

    const-string v3, "Error in parsing the default settings."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v1, 0x0

    goto :goto_1
.end method

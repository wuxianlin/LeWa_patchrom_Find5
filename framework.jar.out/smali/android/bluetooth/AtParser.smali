.class public Landroid/bluetooth/AtParser;
.super Ljava/lang/Object;
.source "AtParser.java"


# static fields
.field private static final TYPE_ACTION:I = 0x0

.field private static final TYPE_READ:I = 0x1

.field private static final TYPE_SET:I = 0x2

.field private static final TYPE_TEST:I = 0x3


# instance fields
.field private mBasicHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Landroid/bluetooth/AtCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mExtHandlers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/bluetooth/AtCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mLastInput:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    .line 106
    const-string v0, ""

    iput-object v0, p0, Landroid/bluetooth/AtParser;->mLastInput:Ljava/lang/String;

    .line 107
    return-void
.end method

.method private static clean(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "input"

    .prologue
    const/16 v5, 0x22

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 145
    .local v3, out:Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 146
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 147
    .local v0, c:C
    if-ne v0, v5, :cond_3

    .line 148
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 149
    .local v2, j:I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    .line 150
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    .end local v0           #c:C
    .end local v2           #j:I
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 154
    .restart local v0       #c:C
    .restart local v2       #j:I
    :cond_1
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    move v1, v2

    .line 145
    .end local v2           #j:I
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 156
    :cond_3
    const/16 v4, 0x20

    if-eq v0, v4, :cond_2

    .line 157
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1
.end method

.method private static findChar(CLjava/lang/String;I)I
    .locals 4
    .parameter "ch"
    .parameter "input"
    .parameter "fromIndex"

    .prologue
    const/16 v3, 0x22

    .line 173
    move v1, p2

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 174
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 175
    .local v0, c:C
    if-ne v0, v3, :cond_0

    .line 176
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 177
    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 178
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 184
    .end local v0           #c:C
    :goto_1
    return v2

    .line 180
    .restart local v0       #c:C
    :cond_0
    if-ne v0, p0, :cond_1

    move v2, v1

    .line 181
    goto :goto_1

    .line 173
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 184
    .end local v0           #c:C
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    goto :goto_1
.end method

.method private static findEndExtendedName(Ljava/lang/String;I)I
    .locals 3
    .parameter "input"
    .parameter "index"

    .prologue
    .line 219
    move v1, p1

    .local v1, i:I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 220
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 224
    .local v0, c:C
    invoke-static {v0}, Landroid/bluetooth/AtParser;->isAtoZ(C)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    :cond_0
    :sswitch_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 225
    :cond_1
    const/16 v2, 0x30

    if-lt v0, v2, :cond_2

    const/16 v2, 0x39

    if-le v0, v2, :cond_0

    .line 226
    :cond_2
    sparse-switch v0, :sswitch_data_0

    .line 239
    .end local v0           #c:C
    .end local v1           #i:I
    :goto_1
    return v1

    .restart local v1       #i:I
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 226
    nop

    :sswitch_data_0
    .sparse-switch
        0x21 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2d -> :sswitch_0
        0x2e -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x5f -> :sswitch_0
    .end sparse-switch
.end method

.method private static generateArgs(Ljava/lang/String;)[Ljava/lang/Object;
    .locals 7
    .parameter "input"

    .prologue
    const/4 v6, -0x1

    .line 193
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 194
    .local v3, out:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    const-string v4, ","

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 195
    .local v0, arguments:[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v4, v0

    if-ge v2, v4, :cond_2

    .line 196
    aget-object v4, v0, v2

    if-nez v4, :cond_0

    .line 197
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 195
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 200
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/Integer;

    aget-object v5, v0, v2

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 201
    :catch_0
    move-exception v1

    .line 202
    .local v1, e:Ljava/lang/NumberFormatException;
    aget-object v4, v0, v2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 203
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 205
    :cond_1
    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 210
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :cond_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method private static isAtoZ(C)Z
    .locals 1
    .parameter "c"

    .prologue
    .line 165
    const/16 v0, 0x41

    if-lt p0, v0, :cond_0

    const/16 v0, 0x5a

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public process(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;
    .locals 14
    .parameter "raw_input"

    .prologue
    .line 251
    invoke-static {p1}, Landroid/bluetooth/AtParser;->clean(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, input:Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "A/"

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v7, v10, v11, v12, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 255
    new-instance v7, Ljava/lang/String;

    .end local v7           #input:Ljava/lang/String;
    iget-object v10, p0, Landroid/bluetooth/AtParser;->mLastInput:Ljava/lang/String;

    invoke-direct {v7, v10}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 261
    .restart local v7       #input:Ljava/lang/String;
    :goto_0
    const-string v10, ""

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 263
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    const/4 v10, 0x2

    invoke-direct {v8, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 376
    :cond_0
    :goto_1
    return-object v8

    .line 257
    :cond_1
    new-instance v10, Ljava/lang/String;

    invoke-direct {v10, v7}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Landroid/bluetooth/AtParser;->mLastInput:Ljava/lang/String;

    goto :goto_0

    .line 267
    :cond_2
    const/4 v10, 0x0

    const-string v11, "AT"

    const/4 v12, 0x0

    const/4 v13, 0x2

    invoke-virtual {v7, v10, v11, v12, v13}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v10

    if-nez v10, :cond_3

    .line 269
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    const/4 v10, 0x1

    invoke-direct {v8, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    goto :goto_1

    .line 273
    :cond_3
    const/4 v6, 0x2

    .line 274
    .local v6, index:I
    new-instance v8, Landroid/bluetooth/AtCommandResult;

    const/4 v10, 0x0

    invoke-direct {v8, v10}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    .line 276
    .local v8, result:Landroid/bluetooth/AtCommandResult;
    :goto_2
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_0

    .line 277
    invoke-virtual {v7, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 279
    .local v1, c:C
    invoke-static {v1}, Landroid/bluetooth/AtParser;->isAtoZ(C)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 283
    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, args:Ljava/lang/String;
    iget-object v10, p0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 285
    iget-object v10, p0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/bluetooth/AtCommandHandler;

    invoke-virtual {v10, v0}, Landroid/bluetooth/AtCommandHandler;->handleBasicCommand(Ljava/lang/String;)Landroid/bluetooth/AtCommandResult;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_1

    .line 290
    :cond_4
    new-instance v10, Landroid/bluetooth/AtCommandResult;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_1

    .line 297
    .end local v0           #args:Ljava/lang/String;
    :cond_5
    const/16 v10, 0x2b

    if-ne v1, v10, :cond_e

    .line 301
    add-int/lit8 v10, v6, 0x1

    invoke-static {v7, v10}, Landroid/bluetooth/AtParser;->findEndExtendedName(Ljava/lang/String;I)I

    move-result v5

    .line 302
    .local v5, i:I
    invoke-virtual {v7, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 303
    .local v2, commandName:Ljava/lang/String;
    iget-object v10, p0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_6

    .line 305
    new-instance v10, Landroid/bluetooth/AtCommandResult;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_1

    .line 309
    :cond_6
    iget-object v10, p0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/AtCommandHandler;

    .line 313
    .local v4, handler:Landroid/bluetooth/AtCommandHandler;
    const/16 v10, 0x3b

    invoke-static {v10, v7, v6}, Landroid/bluetooth/AtParser;->findChar(CLjava/lang/String;I)I

    move-result v3

    .line 320
    .local v3, endIndex:I
    if-lt v5, v3, :cond_7

    .line 321
    const/4 v9, 0x0

    .line 343
    .local v9, type:I
    :goto_3
    packed-switch v9, :pswitch_data_0

    .line 364
    :goto_4
    invoke-virtual {v8}, Landroid/bluetooth/AtCommandResult;->getResultCode()I

    move-result v10

    if-nez v10, :cond_0

    .line 368
    move v6, v3

    .line 369
    goto :goto_2

    .line 322
    .end local v9           #type:I
    :cond_7
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3f

    if-ne v10, v11, :cond_8

    .line 323
    const/4 v9, 0x1

    .restart local v9       #type:I
    goto :goto_3

    .line 324
    .end local v9           #type:I
    :cond_8
    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3d

    if-ne v10, v11, :cond_c

    .line 325
    add-int/lit8 v10, v5, 0x1

    if-ge v10, v3, :cond_a

    .line 326
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x3f

    if-ne v10, v11, :cond_9

    .line 327
    const/4 v9, 0x3

    .restart local v9       #type:I
    goto :goto_3

    .line 329
    .end local v9           #type:I
    :cond_9
    const/4 v9, 0x2

    .restart local v9       #type:I
    goto :goto_3

    .line 331
    .end local v9           #type:I
    :cond_a
    add-int/lit8 v10, v5, 0x1

    if-ne v10, v3, :cond_b

    .line 333
    new-instance v10, Landroid/bluetooth/AtCommandResult;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto/16 :goto_1

    .line 336
    :cond_b
    const/4 v9, 0x2

    .restart local v9       #type:I
    goto :goto_3

    .line 339
    .end local v9           #type:I
    :cond_c
    const/4 v9, 0x0

    .restart local v9       #type:I
    goto :goto_3

    .line 345
    :pswitch_0
    invoke-virtual {v4}, Landroid/bluetooth/AtCommandHandler;->handleActionCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_4

    .line 348
    :pswitch_1
    invoke-virtual {v4}, Landroid/bluetooth/AtCommandHandler;->handleReadCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_4

    .line 351
    :pswitch_2
    invoke-virtual {v4}, Landroid/bluetooth/AtCommandHandler;->handleTestCommand()Landroid/bluetooth/AtCommandResult;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_4

    .line 354
    :pswitch_3
    add-int/lit8 v10, v5, 0x1

    invoke-virtual {v7, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/bluetooth/AtParser;->generateArgs(Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    .line 356
    .local v0, args:[Ljava/lang/Object;
    if-nez v0, :cond_d

    .line 358
    new-instance v10, Landroid/bluetooth/AtCommandResult;

    const/4 v11, 0x1

    invoke-direct {v10, v11}, Landroid/bluetooth/AtCommandResult;-><init>(I)V

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_4

    .line 361
    :cond_d
    invoke-virtual {v4, v0}, Landroid/bluetooth/AtCommandHandler;->handleSetCommand([Ljava/lang/Object;)Landroid/bluetooth/AtCommandResult;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/bluetooth/AtCommandResult;->addResult(Landroid/bluetooth/AtCommandResult;)V

    goto :goto_4

    .line 372
    .end local v0           #args:[Ljava/lang/Object;
    .end local v2           #commandName:Ljava/lang/String;
    .end local v3           #endIndex:I
    .end local v4           #handler:Landroid/bluetooth/AtCommandHandler;
    .end local v5           #i:I
    .end local v9           #type:I
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2

    .line 343
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method public register(Ljava/lang/Character;Landroid/bluetooth/AtCommandHandler;)V
    .locals 1
    .parameter "command"
    .parameter "handler"

    .prologue
    .line 117
    iget-object v0, p0, Landroid/bluetooth/AtParser;->mBasicHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    return-void
.end method

.method public register(Ljava/lang/String;Landroid/bluetooth/AtCommandHandler;)V
    .locals 1
    .parameter "command"
    .parameter "handler"

    .prologue
    .line 133
    iget-object v0, p0, Landroid/bluetooth/AtParser;->mExtHandlers:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    return-void
.end method

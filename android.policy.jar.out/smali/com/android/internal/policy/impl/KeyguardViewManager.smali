.class public Lcom/android/internal/policy/impl/KeyguardViewManager;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardWindowController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/KeyguardViewManager$WallPaperBroadcastReceiver;,
        Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;,
        Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field public static REFRESH_KEYGUARD_WALL_PAPER:I

.field private static TAG:Ljava/lang/String;


# instance fields
.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

.field private final mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mImgKeyguardWallPaper:Landroid/widget/ImageView;

.field private mKeyguardHost:Landroid/widget/FrameLayout;

.field private mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

.field private final mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

.field private mLockPaper:Landroid/graphics/drawable/Drawable;

.field private mLockPaperPath:Ljava/lang/String;

.field private mNeedsInput:Z

.field private mRemoteContext:Landroid/content/Context;

.field private mScreenOn:Z

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private final mViewManager:Landroid/view/ViewManager;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field runnable:Ljava/lang/Runnable;

.field private tempBackgroundName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 81
    const-string v0, "KeyguardViewManager"

    sput-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    .line 282
    const/16 v0, 0x3e9

    sput v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->REFRESH_KEYGUARD_WALL_PAPER:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewProperties;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 3
    .parameter "context"
    .parameter "viewManager"
    .parameter "callback"
    .parameter "keyguardViewProperties"
    .parameter "updateMonitor"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mNeedsInput:Z

    .line 96
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    .line 98
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mImgKeyguardWallPaper:Landroid/widget/ImageView;

    .line 99
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->tempBackgroundName:Ljava/lang/String;

    .line 100
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mLockPaperPath:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mLockPaper:Landroid/graphics/drawable/Drawable;

    .line 104
    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mRemoteContext:Landroid/content/Context;

    .line 283
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardViewManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardViewManager$1;-><init>(Lcom/android/internal/policy/impl/KeyguardViewManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mHandler:Landroid/os/Handler;

    .line 300
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardViewManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardViewManager$2;-><init>(Lcom/android/internal/policy/impl/KeyguardViewManager;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->runnable:Ljava/lang/Runnable;

    .line 120
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    .line 121
    iput-object p2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    .line 122
    iput-object p3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    .line 123
    iput-object p4, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    .line 125
    iput-object p5, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 127
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 128
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "com.oppo.change_lockscreen_wallpaper"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardViewManager$WallPaperBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/KeyguardViewManager$WallPaperBroadcastReceiver;-><init>(Lcom/android/internal/policy/impl/KeyguardViewManager;)V

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 130
    invoke-static {p1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->getRemoteContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mRemoteContext:Landroid/content/Context;

    .line 131
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/KeyguardViewManager;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mLockPaperPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/KeyguardViewManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mLockPaperPath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mLockPaper:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/internal/policy/impl/KeyguardViewManager;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mLockPaper:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/KeyguardViewManager;)Lcom/android/internal/policy/impl/KeyguardViewBase;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/KeyguardViewManager;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public static getRemoteContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 5
    .parameter "context"

    .prologue
    .line 388
    const/4 v0, 0x0

    .line 390
    .local v0, c:Landroid/content/Context;
    :try_start_0
    const-string v2, "com.oppo.lockmanager"

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to get package : com.android.settings -- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private updateUserActivityTimeoutInWindowLayoutParams()V
    .locals 3

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v1, 0x2710

    iput-wide v1, v0, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 566
    return-void
.end method


# virtual methods
.method public declared-synchronized dismiss()V
    .locals 1
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->NEW_METHOD:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLockScreenWallpaper()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 316
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->getOldKeyguardWallPaperPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->getLockScreenWallpaper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getLockScreenWallpaper(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 23
    .parameter "path"

    .prologue
    .line 324
    if-nez p1, :cond_1

    .line 325
    const/4 v9, 0x0

    .line 383
    :cond_0
    :goto_0
    return-object v9

    .line 328
    :cond_1
    const/4 v12, 0x0

    .line 329
    .local v12, file:Ljava/io/File;
    const/4 v9, 0x0

    .line 330
    .local v9, drawable:Landroid/graphics/drawable/Drawable;
    const/4 v15, 0x0

    .line 331
    .local v15, fis:Ljava/io/FileInputStream;
    const/4 v4, 0x0

    .line 334
    .local v4, bs:Ljava/io/BufferedInputStream;
    :try_start_0
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 335
    .end local v12           #file:Ljava/io/File;
    .local v13, file:Ljava/io/File;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v20

    if-nez v20, :cond_5

    .line 336
    const/4 v9, 0x0

    .line 372
    :cond_2
    :goto_1
    if-eqz v15, :cond_3

    .line 373
    :try_start_2
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 375
    :cond_3
    if-eqz v4, :cond_4

    .line 376
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_4
    move-object v12, v13

    .line 380
    .end local v13           #file:Ljava/io/File;
    .restart local v12       #file:Ljava/io/File;
    goto :goto_0

    .line 338
    .end local v12           #file:Ljava/io/File;
    .restart local v13       #file:Ljava/io/File;
    :cond_5
    :try_start_3
    invoke-virtual {v13}, Ljava/io/File;->isDirectory()Z

    move-result v20

    if-nez v20, :cond_7

    .line 339
    const-string v20, "OppoLockScreenServie"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, " is not a directory!"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 368
    :catch_0
    move-exception v11

    move-object v12, v13

    .line 369
    .end local v13           #file:Ljava/io/File;
    .local v11, e:Ljava/io/IOException;
    .restart local v12       #file:Ljava/io/File;
    :goto_2
    :try_start_4
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 372
    if-eqz v15, :cond_6

    .line 373
    :try_start_5
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 375
    :cond_6
    if-eqz v4, :cond_0

    .line 376
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    .line 378
    :catch_1
    move-exception v11

    .line 379
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 341
    .end local v11           #e:Ljava/io/IOException;
    .end local v12           #file:Ljava/io/File;
    .restart local v13       #file:Ljava/io/File;
    :cond_7
    :try_start_6
    invoke-virtual {v13}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v14

    .line 342
    .local v14, files:[Ljava/io/File;
    array-length v0, v14

    move/from16 v20, v0

    if-lez v20, :cond_2

    .line 343
    const/16 v20, 0x0

    aget-object v20, v14, v20

    invoke-virtual/range {v20 .. v20}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->tempBackgroundName:Ljava/lang/String;

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->tempBackgroundName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->getOldKeyguardWallPaper()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mLockPaper:Landroid/graphics/drawable/Drawable;

    move-object/from16 v20, v0

    if-eqz v20, :cond_8

    .line 345
    const/4 v9, 0x0

    goto :goto_1

    .line 347
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->tempBackgroundName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/KeyguardViewManager;->writeKeyguardWallPaper(Ljava/lang/String;)V

    .line 348
    new-instance v16, Ljava/io/FileInputStream;

    const/16 v20, 0x0

    aget-object v20, v14, v20

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 349
    .end local v15           #fis:Ljava/io/FileInputStream;
    .local v16, fis:Ljava/io/FileInputStream;
    :try_start_7
    new-instance v5, Ljava/io/BufferedInputStream;

    move-object/from16 v0, v16

    invoke-direct {v5, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 350
    .end local v4           #bs:Ljava/io/BufferedInputStream;
    .local v5, bs:Ljava/io/BufferedInputStream;
    :try_start_8
    invoke-static {v5}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 351
    .local v6, btp:Landroid/graphics/Bitmap;
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v19

    .line 352
    .local v19, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v8

    .line 353
    .local v8, dm:Landroid/util/DisplayMetrics;
    iget v0, v8, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v18, v0

    .line 354
    .local v18, screenWidth:I
    iget v0, v8, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v17, v0

    .line 355
    .local v17, screenHeight:I
    move/from16 v0, v19

    move/from16 v1, v18

    if-le v0, v1, :cond_9

    .line 356
    sub-int v20, v19, v18

    div-int/lit8 v20, v20, 0x2

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-static {v6, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 357
    .local v7, btp2:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .end local v9           #drawable:Landroid/graphics/drawable/Drawable;
    .local v10, drawable:Landroid/graphics/drawable/Drawable;
    move-object v4, v5

    .end local v5           #bs:Ljava/io/BufferedInputStream;
    .restart local v4       #bs:Ljava/io/BufferedInputStream;
    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .line 358
    .end local v10           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v9       #drawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 359
    .end local v4           #bs:Ljava/io/BufferedInputStream;
    .end local v7           #btp2:Landroid/graphics/Bitmap;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v5       #bs:Ljava/io/BufferedInputStream;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :cond_9
    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v18

    move/from16 v3, v17

    invoke-static {v6, v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 360
    .restart local v7       #btp2:Landroid/graphics/Bitmap;
    new-instance v10, Landroid/graphics/drawable/BitmapDrawable;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v10, v0, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6

    .end local v9           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v10       #drawable:Landroid/graphics/drawable/Drawable;
    move-object v4, v5

    .end local v5           #bs:Ljava/io/BufferedInputStream;
    .restart local v4       #bs:Ljava/io/BufferedInputStream;
    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v9, v10

    .end local v10           #drawable:Landroid/graphics/drawable/Drawable;
    .restart local v9       #drawable:Landroid/graphics/drawable/Drawable;
    goto/16 :goto_1

    .line 378
    .end local v6           #btp:Landroid/graphics/Bitmap;
    .end local v7           #btp2:Landroid/graphics/Bitmap;
    .end local v8           #dm:Landroid/util/DisplayMetrics;
    .end local v14           #files:[Ljava/io/File;
    .end local v17           #screenHeight:I
    .end local v18           #screenWidth:I
    .end local v19           #width:I
    :catch_2
    move-exception v11

    .line 379
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    move-object v12, v13

    .line 381
    .end local v13           #file:Ljava/io/File;
    .restart local v12       #file:Ljava/io/File;
    goto/16 :goto_0

    .line 371
    .end local v11           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v20

    .line 372
    :goto_3
    if-eqz v15, :cond_a

    .line 373
    :try_start_9
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V

    .line 375
    :cond_a
    if-eqz v4, :cond_b

    .line 376
    invoke-virtual {v4}, Ljava/io/BufferedInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 380
    :cond_b
    :goto_4
    throw v20

    .line 378
    :catch_3
    move-exception v11

    .line 379
    .restart local v11       #e:Ljava/io/IOException;
    invoke-virtual {v11}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 371
    .end local v11           #e:Ljava/io/IOException;
    .end local v12           #file:Ljava/io/File;
    .restart local v13       #file:Ljava/io/File;
    :catchall_1
    move-exception v20

    move-object v12, v13

    .end local v13           #file:Ljava/io/File;
    .restart local v12       #file:Ljava/io/File;
    goto :goto_3

    .end local v12           #file:Ljava/io/File;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v13       #file:Ljava/io/File;
    .restart local v14       #files:[Ljava/io/File;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catchall_2
    move-exception v20

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v12, v13

    .end local v13           #file:Ljava/io/File;
    .restart local v12       #file:Ljava/io/File;
    goto :goto_3

    .end local v4           #bs:Ljava/io/BufferedInputStream;
    .end local v12           #file:Ljava/io/File;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v5       #bs:Ljava/io/BufferedInputStream;
    .restart local v13       #file:Ljava/io/File;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catchall_3
    move-exception v20

    move-object v4, v5

    .end local v5           #bs:Ljava/io/BufferedInputStream;
    .restart local v4       #bs:Ljava/io/BufferedInputStream;
    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v12, v13

    .end local v13           #file:Ljava/io/File;
    .restart local v12       #file:Ljava/io/File;
    goto :goto_3

    .line 368
    .end local v14           #files:[Ljava/io/File;
    :catch_4
    move-exception v11

    goto/16 :goto_2

    .end local v12           #file:Ljava/io/File;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v13       #file:Ljava/io/File;
    .restart local v14       #files:[Ljava/io/File;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catch_5
    move-exception v11

    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v12, v13

    .end local v13           #file:Ljava/io/File;
    .restart local v12       #file:Ljava/io/File;
    goto/16 :goto_2

    .end local v4           #bs:Ljava/io/BufferedInputStream;
    .end local v12           #file:Ljava/io/File;
    .end local v15           #fis:Ljava/io/FileInputStream;
    .restart local v5       #bs:Ljava/io/BufferedInputStream;
    .restart local v13       #file:Ljava/io/File;
    .restart local v16       #fis:Ljava/io/FileInputStream;
    :catch_6
    move-exception v11

    move-object v4, v5

    .end local v5           #bs:Ljava/io/BufferedInputStream;
    .restart local v4       #bs:Ljava/io/BufferedInputStream;
    move-object/from16 v15, v16

    .end local v16           #fis:Ljava/io/FileInputStream;
    .restart local v15       #fis:Ljava/io/FileInputStream;
    move-object v12, v13

    .end local v13           #file:Ljava/io/File;
    .restart local v12       #file:Ljava/io/File;
    goto/16 :goto_2
.end method

.method public getOldKeyguardWallPaper()Ljava/lang/String;
    .locals 5

    .prologue
    .line 421
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mRemoteContext:Landroid/content/Context;

    const-string v3, "lockscreen_shared_file"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 422
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "wallpaper_name"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 423
    .local v1, wallPaperName:Ljava/lang/String;
    return-object v1
.end method

.method public getOldKeyguardWallPaperPath()Ljava/lang/String;
    .locals 5

    .prologue
    .line 435
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mRemoteContext:Landroid/content/Context;

    const-string v3, "lockscreen_shared_file_path"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 436
    .local v0, settings:Landroid/content/SharedPreferences;
    const-string v2, "wallpaper_path"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 437
    .local v1, wallPaperPath:Ljava/lang/String;
    return-object v1
.end method

.method public getWallPaperIsSettedBoth()Z
    .locals 5

    .prologue
    .line 407
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mRemoteContext:Landroid/content/Context;

    const-string v3, "lockscreen_shared_file"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 408
    .local v1, settings:Landroid/content/SharedPreferences;
    const-string v2, "isSettedBoth"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 409
    .local v0, isSettedBoth:Z
    return v0
.end method

.method public declared-synchronized hide()V
    .locals 5

    .prologue
    .line 536
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_0

    .line 537
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 540
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v1, :cond_0

    .line 541
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    .line 542
    .local v0, lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    .line 543
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/internal/policy/impl/KeyguardViewManager$4;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewManager$4;-><init>(Lcom/android/internal/policy/impl/KeyguardViewManager;Lcom/android/internal/policy/impl/KeyguardViewBase;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 553
    .end local v0           #lastView:Lcom/android/internal/policy/impl/KeyguardViewBase;
    :cond_0
    monitor-exit p0

    return-void

    .line 536
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isShowing()Z
    .locals 1

    .prologue
    .line 559
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOff()V
    .locals 1

    .prologue
    .line 467
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    .line 468
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onScreenTurnedOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 471
    :cond_0
    monitor-exit p0

    return-void

    .line 467
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOn(Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V
    .locals 2
    .parameter "showListener"

    .prologue
    .line 476
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    .line 477
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_1

    .line 478
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->onScreenTurnedOn()V

    .line 482
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 485
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/internal/policy/impl/KeyguardViewManager$3;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewManager$3;-><init>(Lcom/android/internal/policy/impl/KeyguardViewManager;Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    :goto_0
    monitor-exit p0

    return-void

    .line 495
    :cond_0
    const/4 v0, 0x0

    :try_start_1
    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 476
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 498
    :cond_1
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized reset()V
    .locals 1

    .prologue
    .line 460
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 461
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 463
    :cond_0
    monitor-exit p0

    return-void

    .line 460
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNeedsInput(Z)V
    .locals 3
    .parameter "needsInput"

    .prologue
    .line 442
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mNeedsInput:Z

    .line 443
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_0

    .line 444
    if-eqz p1, :cond_1

    .line 445
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x20001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 451
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 453
    :cond_0
    return-void

    .line 448
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x2

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0
.end method

.method public setWallPaperIsSettedBoth(Z)V
    .locals 5
    .parameter "isSettedBoth"

    .prologue
    .line 399
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mRemoteContext:Landroid/content/Context;

    const-string v3, "lockscreen_shared_file"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 400
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 401
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "isSettedBoth"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 402
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 404
    return-void
.end method

.method public declared-synchronized show()V
    .locals 11
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_CODE:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation

    .prologue
    const/high16 v10, 0x100

    const/4 v6, 0x0

    .line 176
    monitor-enter p0

    :try_start_0
    const-string v1, "keyguard"

    const-string v2, "KeyguardViewManager--show()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 180
    .local v7, res:Landroid/content/res/Resources;
    const-string v1, "lockscreen.rot_override"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const v1, 0x1110027

    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v6, 0x1

    .line 183
    .local v6, enableScreenRotation:Z
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-nez v1, :cond_5

    .line 186
    new-instance v1, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v5}, Lcom/android/internal/policy/impl/KeyguardViewManager$KeyguardViewHost;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardViewManager$1;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/4 v8, -0x1

    .local v8, stretch:I
    const v4, 0x100900

    .local v4, flags:I
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mNeedsInput:Z

    if-nez v1, :cond_2

    const/high16 v1, 0x2

    or-int/2addr v4, v1

    :cond_2
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 199
    or-int/2addr v4, v10

    .line 201
    :cond_3
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/16 v3, 0x7d4

    const/4 v5, -0x3

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 204
    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 205
    const v1, 0x10301e2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 206
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 207
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 208
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 211
    :cond_4
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 212
    const-string v1, "Keyguard"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 213
    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 215
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    .end local v0           #lp:Landroid/view/WindowManager$LayoutParams;
    .end local v4           #flags:I
    .end local v8           #stretch:I
    :cond_5
    if-eqz v6, :cond_7

    .line 220
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 226
    :goto_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->runnable:Ljava/lang/Runnable;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 230
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-nez v1, :cond_6

    .line 232
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardViewProperties:Lcom/android/internal/policy/impl/KeyguardViewProperties;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    iget-object v5, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-interface {v1, v2, v3, v5, p0}, Lcom/android/internal/policy/impl/KeyguardViewProperties;->createKeyguardView(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewCallback;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardWindowController;)Lcom/android/internal/policy/impl/KeyguardViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    .line 234
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    const v2, 0x1020245

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setId(I)V

    .line 236
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 240
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mScreenOn:Z

    if-eqz v1, :cond_6

    .line 243
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->show()V

    .line 251
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    const/high16 v9, 0x60

    .line 255
    .local v9, visFlags:I
    sget-object v1, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KGVM: Set visibility on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v9}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 259
    invoke-direct {p0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->updateUserActivityTimeoutInWindowLayoutParams()V

    .line 261
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 262
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->requestFocus()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    monitor-exit p0

    return-void

    .line 223
    .end local v9           #visFlags:I
    :cond_7
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, 0x5

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 176
    .end local v6           #enableScreenRotation:Z
    .end local v7           #res:Landroid/content/res/Resources;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized verifyUnlock()V
    .locals 1

    .prologue
    .line 504
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewManager;->show()V

    .line 505
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->verifyUnlock()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 506
    monitor-exit p0

    return-void

    .line 504
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wakeWhenReadyTq(I)Z
    .locals 2
    .parameter "keyCode"

    .prologue
    .line 521
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    if-eqz v0, :cond_0

    .line 522
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/KeyguardViewBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->wakeWhenReadyTq(I)V

    .line 523
    const/4 v0, 0x1

    .line 526
    :goto_0
    return v0

    .line 525
    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "mKeyguardView is null in wakeWhenReadyTq"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public writeKeyguardWallPaper(Ljava/lang/String;)V
    .locals 5
    .parameter "wallpaperName"

    .prologue
    .line 413
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mRemoteContext:Landroid/content/Context;

    const-string v3, "lockscreen_shared_file"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 414
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 415
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "wallpaper_name"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 416
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 417
    return-void
.end method

.method public writeKeyguardWallPaperPath(Ljava/lang/String;)V
    .locals 5
    .parameter "wallpaperPath"

    .prologue
    .line 427
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewManager;->mRemoteContext:Landroid/content/Context;

    const-string v3, "lockscreen_shared_file_path"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 428
    .local v1, settings:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 429
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "wallpaper_path"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 430
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 431
    return-void
.end method

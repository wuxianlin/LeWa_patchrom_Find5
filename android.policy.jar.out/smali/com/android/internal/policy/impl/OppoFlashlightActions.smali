.class public final Lcom/android/internal/policy/impl/OppoFlashlightActions;
.super Landroid/widget/ImageView;
.source "OppoFlashlightActions.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field private static final HANDLE_CLOSE_FLASH:I = 0x2

.field private static final HANDLE_FORBID_FLASH:I = 0x3

.field private static final HANDLE_OPEN_FLASH:I = 0x1

.field private static final LOW_VOLTAGE_LIMIT:I = 0xf

.field private static final TAG:Ljava/lang/String; = "KeyguardActions"


# instance fields
.field private camera:Landroid/hardware/Camera;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsForbidFlash:Z

.field private mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

.field private mText:Ljava/lang/String;

.field private mTransparent:Landroid/graphics/Bitmap;

.field private misAttached:Z

.field private parameters:Landroid/hardware/Camera$Parameters;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardViewManager;)V
    .locals 4
    .parameter "context"
    .parameter "keyguardViewManager"

    .prologue
    const/4 v2, 0x0

    .line 79
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 67
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->camera:Landroid/hardware/Camera;

    .line 68
    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->parameters:Landroid/hardware/Camera$Parameters;

    .line 70
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->misAttached:Z

    .line 105
    new-instance v2, Lcom/android/internal/policy/impl/OppoFlashlightActions$1;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/OppoFlashlightActions$1;-><init>(Lcom/android/internal/policy/impl/OppoFlashlightActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mHandler:Landroid/os/Handler;

    .line 242
    new-instance v2, Lcom/android/internal/policy/impl/OppoFlashlightActions$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/OppoFlashlightActions$2;-><init>(Lcom/android/internal/policy/impl/OppoFlashlightActions;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    iput-object p1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoFlashlightActions;->isForbidFlashLight()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mIsForbidFlash:Z

    .line 85
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mIsForbidFlash:Z

    if-nez v2, :cond_0

    .line 86
    const v2, 0x1080281

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/OppoFlashlightActions;->setBackgroundResource(I)V

    .line 92
    :goto_0
    iput-object p2, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mKeyguardViewManager:Lcom/android/internal/policy/impl/KeyguardViewManager;

    .line 95
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x1080509

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    .line 96
    .local v0, bmpDraw:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mTransparent:Landroid/graphics/Bitmap;

    .line 100
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v1, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 104
    return-void

    .line 88
    .end local v0           #bmpDraw:Landroid/graphics/drawable/BitmapDrawable;
    .end local v1           #filter:Landroid/content/IntentFilter;
    :cond_0
    const v2, 0x1080508

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/OppoFlashlightActions;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/OppoFlashlightActions;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->misAttached:Z

    return p1
.end method

.method private getLocaleLanguage()Ljava/lang/String;
    .locals 5

    .prologue
    .line 255
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 256
    .local v0, l:Ljava/util/Locale;
    const-string v1, "%s-%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public closeCameraService()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->camera:Landroid/hardware/Camera;

    .line 234
    :cond_0
    return-void
.end method

.method public closeFlashLight()V
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->parameters:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->parameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_1

    .line 217
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :cond_1
    :goto_0
    return-void

    .line 219
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public isAttached()Z
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->misAttached:Z

    return v0
.end method

.method public isForbidFlashLight()Z
    .locals 12

    .prologue
    const/16 v11, 0x30

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 297
    const/4 v3, 0x0

    .line 299
    .local v3, fReader:Ljava/io/FileReader;
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v9, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v1, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v1, capacity:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v9

    if-nez v9, :cond_1

    .line 326
    if-eqz v3, :cond_0

    .line 328
    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 335
    .end local v1           #capacity:Ljava/io/File;
    :cond_0
    :goto_0
    return v8

    .line 329
    .restart local v1       #capacity:Ljava/io/File;
    :catch_0
    move-exception v2

    .line 330
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 303
    .end local v2           #e:Ljava/io/IOException;
    :cond_1
    :try_start_2
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 304
    .end local v3           #fReader:Ljava/io/FileReader;
    .local v4, fReader:Ljava/io/FileReader;
    const/4 v9, 0x3

    :try_start_3
    new-array v0, v9, [C

    .line 305
    .local v0, batteryLevel:[C
    invoke-virtual {v4, v0}, Ljava/io/FileReader;->read([C)I

    .line 307
    invoke-static {v0}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object v6

    .line 310
    .local v6, value:Ljava/lang/String;
    const/4 v9, 0x0

    aget-char v9, v0, v9

    const/16 v10, 0x31

    if-ne v9, v10, :cond_3

    const/4 v9, 0x1

    aget-char v9, v0, v9

    if-ne v9, v11, :cond_3

    const/4 v9, 0x2

    aget-char v9, v0, v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5

    if-ne v9, v11, :cond_3

    .line 311
    const/16 v5, 0x64

    .line 319
    .local v5, level:I
    :goto_1
    const/16 v9, 0xf

    if-gt v5, v9, :cond_6

    .line 326
    :goto_2
    if-eqz v4, :cond_2

    .line 328
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_2
    :goto_3
    move-object v3, v4

    .end local v4           #fReader:Ljava/io/FileReader;
    .restart local v3       #fReader:Ljava/io/FileReader;
    move v8, v7

    .line 331
    goto :goto_0

    .line 312
    .end local v3           #fReader:Ljava/io/FileReader;
    .end local v5           #level:I
    .restart local v4       #fReader:Ljava/io/FileReader;
    :cond_3
    const/4 v9, 0x1

    :try_start_5
    aget-char v9, v0, v9

    if-lt v9, v11, :cond_4

    const/4 v9, 0x1

    aget-char v9, v0, v9

    const/16 v10, 0x39

    if-le v9, v10, :cond_5

    .line 313
    :cond_4
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .restart local v5       #level:I
    goto :goto_1

    .line 315
    .end local v5           #level:I
    :cond_5
    const/4 v9, 0x0

    const/4 v10, 0x2

    invoke-virtual {v6, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    move-result v5

    .restart local v5       #level:I
    goto :goto_1

    :cond_6
    move v7, v8

    .line 319
    goto :goto_2

    .line 329
    :catch_1
    move-exception v2

    .line 330
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 321
    .end local v0           #batteryLevel:[C
    .end local v1           #capacity:Ljava/io/File;
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fReader:Ljava/io/FileReader;
    .end local v5           #level:I
    .end local v6           #value:Ljava/lang/String;
    .restart local v3       #fReader:Ljava/io/FileReader;
    :catch_2
    move-exception v2

    .line 323
    .local v2, e:Ljava/lang/Exception;
    :goto_4
    :try_start_6
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 326
    if-eqz v3, :cond_0

    .line 328
    :try_start_7
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_0

    .line 329
    :catch_3
    move-exception v2

    .line 330
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 326
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_5
    if-eqz v3, :cond_7

    .line 328
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 331
    :cond_7
    :goto_6
    throw v7

    .line 329
    :catch_4
    move-exception v2

    .line 330
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 326
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #fReader:Ljava/io/FileReader;
    .restart local v1       #capacity:Ljava/io/File;
    .restart local v4       #fReader:Ljava/io/FileReader;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4           #fReader:Ljava/io/FileReader;
    .restart local v3       #fReader:Ljava/io/FileReader;
    goto :goto_5

    .line 321
    .end local v3           #fReader:Ljava/io/FileReader;
    .restart local v4       #fReader:Ljava/io/FileReader;
    :catch_5
    move-exception v2

    move-object v3, v4

    .end local v4           #fReader:Ljava/io/FileReader;
    .restart local v3       #fReader:Ljava/io/FileReader;
    goto :goto_4
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 143
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 148
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->misAttached:Z

    .line 149
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mIsForbidFlash:Z

    if-nez v1, :cond_0

    .line 150
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 152
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0xf

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 155
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 161
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->misAttached:Z

    .line 163
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoFlashlightActions;->closeFlashLight()V

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/OppoFlashlightActions;->closeCameraService()V

    .line 165
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x1

    const v6, 0x43938000

    const v5, 0x44d02000

    const/high16 v4, 0x44c8

    .line 262
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 263
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 264
    .local v0, paint:Landroid/graphics/Paint;
    new-instance v1, Landroid/graphics/PaintFlagsDrawFilter;

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V

    .line 266
    const/high16 v1, 0x4218

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 267
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mIsForbidFlash:Z

    if-eqz v1, :cond_1

    .line 268
    const-string v1, "#afafae"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 269
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040675

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mText:Ljava/lang/String;

    .line 270
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoFlashlightActions;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en-US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mText:Ljava/lang/String;

    const/high16 v2, 0x4397

    invoke-virtual {p1, v1, v2, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 272
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mTransparent:Landroid/graphics/Bitmap;

    const/16 v2, 0x320

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mTransparent:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v2, v3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const/high16 v2, 0x4316

    invoke-virtual {p1, v1, v2, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 293
    :goto_0
    return-void

    .line 274
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mText:Ljava/lang/String;

    const/high16 v2, 0x43c3

    invoke-virtual {p1, v1, v2, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 275
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mTransparent:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v6, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 280
    :cond_1
    const-string v1, "#779a49"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 281
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040674

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mText:Ljava/lang/String;

    .line 282
    invoke-direct {p0}, Lcom/android/internal/policy/impl/OppoFlashlightActions;->getLocaleLanguage()Ljava/lang/String;

    move-result-object v1

    const-string v2, "en-US"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 283
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mText:Ljava/lang/String;

    const v2, 0x439f8000

    invoke-virtual {p1, v1, v2, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 284
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mTransparent:Landroid/graphics/Bitmap;

    const/16 v2, 0x258

    iget-object v3, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mTransparent:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v2, v3, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    const/high16 v2, 0x437a

    invoke-virtual {p1, v1, v2, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 286
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mText:Ljava/lang/String;

    const v2, 0x43d18000

    invoke-virtual {p1, v1, v2, v5, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 287
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->mTransparent:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v1, v6, v4, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public openCameraService()V
    .locals 3

    .prologue
    .line 172
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->camera:Landroid/hardware/Camera;

    if-nez v1, :cond_0

    .line 174
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->camera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v1, "OppoLockScreenView"

    const-string v2, "openCameraService()  RuntimeException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public openFlashLight()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->camera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->camera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->parameters:Landroid/hardware/Camera$Parameters;

    .line 189
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->parameters:Landroid/hardware/Camera$Parameters;

    const-string v1, "torch"

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->camera:Landroid/hardware/Camera;

    iget-object v1, p0, Lcom/android/internal/policy/impl/OppoFlashlightActions;->parameters:Landroid/hardware/Camera$Parameters;

    invoke-virtual {v0, v1}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 195
    :catch_0
    move-exception v0

    goto :goto_0
.end method

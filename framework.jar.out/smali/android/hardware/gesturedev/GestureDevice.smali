.class public Landroid/hardware/gesturedev/GestureDevice;
.super Ljava/lang/Object;
.source "GestureDevice.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/gesturedev/GestureDevice$ErrorCallback;,
        Landroid/hardware/gesturedev/GestureDevice$GestureListener;,
        Landroid/hardware/gesturedev/GestureDevice$EventHandler;
    }
.end annotation


# static fields
.field public static final GESTURE_ERROR_SERVER_DIED:I = 0x64

.field public static final GESTURE_ERROR_UNKNOWN:I = 0x1

.field private static final GESTURE_MSG_ALL_MSGS:I = 0xfff

.field private static final GESTURE_MSG_ERROR:I = 0x1

.field private static final GESTURE_MSG_GESTURE:I = 0x2

.field private static final TAG:Ljava/lang/String; = "GestureDevice"

.field private static mDeviceList:[Landroid/hardware/gesturedev/GestureDevice;

.field private static mNumOfDevice:I

.field private static mRefCountList:[I


# instance fields
.field private mDeviceId:I

.field private mErrorCBList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/gesturedev/GestureDevice$ErrorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mEventHandler:Landroid/hardware/gesturedev/GestureDevice$EventHandler;

.field private mGestureRunning:Z

.field private mListenerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/gesturedev/GestureDevice$GestureListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNativeContext:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    sput-object v0, Landroid/hardware/gesturedev/GestureDevice;->mDeviceList:[Landroid/hardware/gesturedev/GestureDevice;

    .line 40
    sput-object v0, Landroid/hardware/gesturedev/GestureDevice;->mRefCountList:[I

    .line 41
    const/4 v0, 0x0

    sput v0, Landroid/hardware/gesturedev/GestureDevice;->mNumOfDevice:I

    return-void
.end method

.method private constructor <init>(I)V
    .locals 3
    .parameter "deviceId"

    .prologue
    const/4 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object v2, p0, Landroid/hardware/gesturedev/GestureDevice;->mEventHandler:Landroid/hardware/gesturedev/GestureDevice$EventHandler;

    .line 35
    iput-object v2, p0, Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;

    .line 36
    iput-object v2, p0, Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;

    .line 37
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/hardware/gesturedev/GestureDevice;->mGestureRunning:Z

    .line 60
    iput p1, p0, Landroid/hardware/gesturedev/GestureDevice;->mDeviceId:I

    .line 62
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    .line 63
    new-instance v1, Landroid/hardware/gesturedev/GestureDevice$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/gesturedev/GestureDevice$EventHandler;-><init>(Landroid/hardware/gesturedev/GestureDevice;Landroid/hardware/gesturedev/GestureDevice;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/gesturedev/GestureDevice;->mEventHandler:Landroid/hardware/gesturedev/GestureDevice$EventHandler;

    .line 70
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;

    .line 71
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;

    .line 73
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1, p1}, Landroid/hardware/gesturedev/GestureDevice;->native_setup(Ljava/lang/Object;I)V

    .line 74
    return-void

    .line 64
    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 65
    new-instance v1, Landroid/hardware/gesturedev/GestureDevice$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/hardware/gesturedev/GestureDevice$EventHandler;-><init>(Landroid/hardware/gesturedev/GestureDevice;Landroid/hardware/gesturedev/GestureDevice;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/hardware/gesturedev/GestureDevice;->mEventHandler:Landroid/hardware/gesturedev/GestureDevice$EventHandler;

    goto :goto_0

    .line 67
    :cond_1
    iput-object v2, p0, Landroid/hardware/gesturedev/GestureDevice;->mEventHandler:Landroid/hardware/gesturedev/GestureDevice$EventHandler;

    goto :goto_0
.end method

.method static synthetic access$000(Landroid/hardware/gesturedev/GestureDevice;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Landroid/hardware/gesturedev/GestureDevice;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 30
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public static declared-synchronized close(Landroid/hardware/gesturedev/GestureDevice;)V
    .locals 4
    .parameter "device"

    .prologue
    .line 303
    const-class v2, Landroid/hardware/gesturedev/GestureDevice;

    monitor-enter v2

    :try_start_0
    iget v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mDeviceId:I

    .line 304
    .local v0, deviceId:I
    sget-object v1, Landroid/hardware/gesturedev/GestureDevice;->mRefCountList:[I

    if-eqz v1, :cond_0

    sget-object v1, Landroid/hardware/gesturedev/GestureDevice;->mDeviceList:[Landroid/hardware/gesturedev/GestureDevice;

    if-eqz v1, :cond_0

    .line 305
    sget-object v1, Landroid/hardware/gesturedev/GestureDevice;->mRefCountList:[I

    aget v3, v1, v0

    add-int/lit8 v3, v3, -0x1

    aput v3, v1, v0

    .line 306
    sget-object v1, Landroid/hardware/gesturedev/GestureDevice;->mRefCountList:[I

    aget v1, v1, v0

    if-nez v1, :cond_1

    .line 307
    invoke-direct {p0}, Landroid/hardware/gesturedev/GestureDevice;->release()V

    .line 308
    sget-object v1, Landroid/hardware/gesturedev/GestureDevice;->mDeviceList:[Landroid/hardware/gesturedev/GestureDevice;

    const/4 v3, 0x0

    aput-object v3, v1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 309
    :cond_1
    :try_start_1
    sget-object v1, Landroid/hardware/gesturedev/GestureDevice;->mRefCountList:[I

    aget v1, v1, v0

    if-gez v1, :cond_0

    .line 310
    sget-object v1, Landroid/hardware/gesturedev/GestureDevice;->mRefCountList:[I

    const/4 v3, 0x0

    aput v3, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 303
    .end local v0           #deviceId:I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static native getNumberOfGestureDevices()I
.end method

.method private final native native_getParameters()Ljava/lang/String;
.end method

.method private final native native_release()V
.end method

.method private final native native_setParameters(Ljava/lang/String;)I
.end method

.method private final native native_setup(Ljava/lang/Object;I)V
.end method

.method private final native native_startGesture()V
.end method

.method private final native native_stopGesture()V
.end method

.method public static declared-synchronized open(I)Landroid/hardware/gesturedev/GestureDevice;
    .locals 3
    .parameter "deviceId"

    .prologue
    .line 274
    const-class v1, Landroid/hardware/gesturedev/GestureDevice;

    monitor-enter v1

    :try_start_0
    sget v0, Landroid/hardware/gesturedev/GestureDevice;->mNumOfDevice:I

    if-nez v0, :cond_0

    .line 275
    invoke-static {}, Landroid/hardware/gesturedev/GestureDevice;->getNumberOfGestureDevices()I

    move-result v0

    sput v0, Landroid/hardware/gesturedev/GestureDevice;->mNumOfDevice:I

    .line 277
    :cond_0
    sget-object v0, Landroid/hardware/gesturedev/GestureDevice;->mDeviceList:[Landroid/hardware/gesturedev/GestureDevice;

    if-nez v0, :cond_1

    sget v0, Landroid/hardware/gesturedev/GestureDevice;->mNumOfDevice:I

    if-lez v0, :cond_1

    .line 278
    sget v0, Landroid/hardware/gesturedev/GestureDevice;->mNumOfDevice:I

    new-array v0, v0, [Landroid/hardware/gesturedev/GestureDevice;

    sput-object v0, Landroid/hardware/gesturedev/GestureDevice;->mDeviceList:[Landroid/hardware/gesturedev/GestureDevice;

    .line 279
    sget v0, Landroid/hardware/gesturedev/GestureDevice;->mNumOfDevice:I

    new-array v0, v0, [I

    sput-object v0, Landroid/hardware/gesturedev/GestureDevice;->mRefCountList:[I

    .line 282
    :cond_1
    if-ltz p0, :cond_2

    sget v0, Landroid/hardware/gesturedev/GestureDevice;->mNumOfDevice:I

    if-lt p0, v0, :cond_3

    .line 283
    :cond_2
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Invalid device ID"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 286
    :cond_3
    :try_start_1
    sget-object v0, Landroid/hardware/gesturedev/GestureDevice;->mDeviceList:[Landroid/hardware/gesturedev/GestureDevice;

    aget-object v0, v0, p0

    if-nez v0, :cond_4

    .line 287
    sget-object v0, Landroid/hardware/gesturedev/GestureDevice;->mDeviceList:[Landroid/hardware/gesturedev/GestureDevice;

    new-instance v2, Landroid/hardware/gesturedev/GestureDevice;

    invoke-direct {v2, p0}, Landroid/hardware/gesturedev/GestureDevice;-><init>(I)V

    aput-object v2, v0, p0

    .line 288
    sget-object v0, Landroid/hardware/gesturedev/GestureDevice;->mRefCountList:[I

    const/4 v2, 0x0

    aput v2, v0, p0

    .line 291
    :cond_4
    sget-object v0, Landroid/hardware/gesturedev/GestureDevice;->mRefCountList:[I

    aget v2, v0, p0

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, p0

    .line 292
    sget-object v0, Landroid/hardware/gesturedev/GestureDevice;->mDeviceList:[Landroid/hardware/gesturedev/GestureDevice;

    aget-object v0, v0, p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "gesture_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    .line 96
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/gesturedev/GestureDevice;

    .line 97
    .local v0, c:Landroid/hardware/gesturedev/GestureDevice;
    if-nez v0, :cond_1

    .line 104
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v2, v0, Landroid/hardware/gesturedev/GestureDevice;->mEventHandler:Landroid/hardware/gesturedev/GestureDevice$EventHandler;

    if-eqz v2, :cond_0

    .line 101
    iget-object v2, v0, Landroid/hardware/gesturedev/GestureDevice;->mEventHandler:Landroid/hardware/gesturedev/GestureDevice$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/hardware/gesturedev/GestureDevice$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 102
    .local v1, m:Landroid/os/Message;
    iget-object v2, v0, Landroid/hardware/gesturedev/GestureDevice;->mEventHandler:Landroid/hardware/gesturedev/GestureDevice$EventHandler;

    invoke-virtual {v2, v1}, Landroid/hardware/gesturedev/GestureDevice$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 81
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 83
    iput-object v1, p0, Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;

    .line 85
    :cond_0
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 86
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 87
    iput-object v1, p0, Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;

    .line 90
    :cond_1
    invoke-direct {p0}, Landroid/hardware/gesturedev/GestureDevice;->native_release()V

    .line 91
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mGestureRunning:Z

    .line 92
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/hardware/gesturedev/GestureDevice;->release()V

    .line 78
    return-void
.end method

.method public declared-synchronized getParameters()Landroid/hardware/gesturedev/GestureParameters;
    .locals 5

    .prologue
    .line 241
    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/hardware/gesturedev/GestureParameters;

    invoke-direct {v0}, Landroid/hardware/gesturedev/GestureParameters;-><init>()V

    .line 242
    .local v0, p:Landroid/hardware/gesturedev/GestureParameters;
    invoke-direct {p0}, Landroid/hardware/gesturedev/GestureDevice;->native_getParameters()Ljava/lang/String;

    move-result-object v1

    .line 243
    .local v1, s:Ljava/lang/String;
    const-string v2, "GestureDevice"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParameter: ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-virtual {v0, v1}, Landroid/hardware/gesturedev/GestureParameters;->unflatten(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 245
    monitor-exit p0

    return-object v0

    .line 241
    .end local v0           #p:Landroid/hardware/gesturedev/GestureParameters;
    .end local v1           #s:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized registerErrorCallback(Landroid/hardware/gesturedev/GestureDevice$ErrorCallback;Z)V
    .locals 1
    .parameter "cb"
    .parameter "reg"

    .prologue
    .line 164
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 165
    :try_start_0
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :goto_0
    monitor-exit p0

    return-void

    .line 167
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mErrorCBList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerGestureListener(Landroid/hardware/gesturedev/GestureDevice$GestureListener;Z)V
    .locals 1
    .parameter "listener"
    .parameter "reg"

    .prologue
    .line 181
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 182
    :try_start_0
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 186
    :goto_0
    monitor-exit p0

    return-void

    .line 184
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mListenerList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 181
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setParameters(Landroid/hardware/gesturedev/GestureParameters;)I
    .locals 1
    .parameter "params"

    .prologue
    .line 230
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/gesturedev/GestureParameters;->flatten()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/hardware/gesturedev/GestureDevice;->native_setParameters(Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startGesture()V
    .locals 2

    .prologue
    .line 202
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mGestureRunning:Z

    if-eqz v0, :cond_0

    .line 203
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Gesture is already running"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 202
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 205
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/hardware/gesturedev/GestureDevice;->native_startGesture()V

    .line 206
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mGestureRunning:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 207
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized stopGesture()V
    .locals 1

    .prologue
    .line 215
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Landroid/hardware/gesturedev/GestureDevice;->native_stopGesture()V

    .line 216
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/gesturedev/GestureDevice;->mGestureRunning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    monitor-exit p0

    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

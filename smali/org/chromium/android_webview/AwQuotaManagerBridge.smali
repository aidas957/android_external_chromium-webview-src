.class public Lorg/chromium/android_webview/AwQuotaManagerBridge;
.super Ljava/lang/Object;
.source "AwQuotaManagerBridge.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/android_webview/AwQuotaManagerBridge$Origins;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sInstance:Lorg/chromium/android_webview/AwQuotaManagerBridge;


# instance fields
.field private mNativeAwQuotaManagerBridgeImpl:J

.field private mNextId:I

.field private mPendingGetOriginCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lorg/chromium/android_webview/AwQuotaManagerBridge$Origins;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingGetQuotaForOriginCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingGetUsageForOriginCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lorg/chromium/android_webview/AwQuotaManagerBridge;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(J)V
    .locals 3
    .param p1, "nativeAwQuotaManagerBridgeImpl"    # J

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-wide p1, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mNativeAwQuotaManagerBridgeImpl:J

    .line 64
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mPendingGetOriginCallbacks:Landroid/util/SparseArray;

    .line 66
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mPendingGetQuotaForOriginCallbacks:Landroid/util/SparseArray;

    .line 67
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mPendingGetUsageForOriginCallbacks:Landroid/util/SparseArray;

    .line 68
    iget-wide v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mNativeAwQuotaManagerBridgeImpl:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/android_webview/AwQuotaManagerBridge;->nativeInit(J)V

    .line 69
    return-void
.end method

.method public static getInstance()Lorg/chromium/android_webview/AwQuotaManagerBridge;
    .locals 4

    .prologue
    .line 28
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 29
    sget-object v0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->sInstance:Lorg/chromium/android_webview/AwQuotaManagerBridge;

    if-nez v0, :cond_0

    .line 30
    new-instance v0, Lorg/chromium/android_webview/AwQuotaManagerBridge;

    invoke-static {}, Lorg/chromium/android_webview/AwQuotaManagerBridge;->nativeGetDefaultNativeAwQuotaManagerBridge()J

    move-result-wide v2

    invoke-direct {v0, v2, v3}, Lorg/chromium/android_webview/AwQuotaManagerBridge;-><init>(J)V

    sput-object v0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->sInstance:Lorg/chromium/android_webview/AwQuotaManagerBridge;

    .line 32
    :cond_0
    sget-object v0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->sInstance:Lorg/chromium/android_webview/AwQuotaManagerBridge;

    return-object v0
.end method

.method private getNextId()I
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lorg/chromium/base/ThreadUtils;->assertOnUiThread()V

    .line 73
    iget v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mNextId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mNextId:I

    return v0
.end method

.method private native nativeDeleteAllData(J)V
.end method

.method private native nativeDeleteOrigin(JLjava/lang/String;)V
.end method

.method private static native nativeGetDefaultNativeAwQuotaManagerBridge()J
.end method

.method private native nativeGetOrigins(JI)V
.end method

.method private native nativeGetUsageAndQuotaForOrigin(JLjava/lang/String;IZ)V
.end method

.method private native nativeInit(J)V
.end method

.method private onGetOriginsCallback(I[Ljava/lang/String;[J[J)V
    .locals 2
    .param p1, "callbackId"    # I
    .param p2, "origin"    # [Ljava/lang/String;
    .param p3, "usages"    # [J
    .param p4, "quotas"    # [J

    .prologue
    .line 137
    sget-boolean v0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mPendingGetOriginCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mPendingGetOriginCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    new-instance v1, Lorg/chromium/android_webview/AwQuotaManagerBridge$Origins;

    invoke-direct {v1, p2, p3, p4}, Lorg/chromium/android_webview/AwQuotaManagerBridge$Origins;-><init>([Ljava/lang/String;[J[J)V

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 140
    iget-object v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mPendingGetOriginCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 141
    return-void
.end method

.method private onGetUsageAndQuotaForOriginCallback(IZJJ)V
    .locals 3
    .param p1, "callbackId"    # I
    .param p2, "isQuota"    # Z
    .param p3, "usage"    # J
    .param p5, "quota"    # J

    .prologue
    .line 146
    if-eqz p2, :cond_1

    .line 147
    sget-boolean v0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mPendingGetQuotaForOriginCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 148
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mPendingGetQuotaForOriginCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 149
    iget-object v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mPendingGetQuotaForOriginCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 155
    :goto_0
    return-void

    .line 151
    :cond_1
    sget-boolean v0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mPendingGetUsageForOriginCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 152
    :cond_2
    iget-object v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mPendingGetUsageForOriginCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/webkit/ValueCallback;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 153
    iget-object v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mPendingGetUsageForOriginCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method


# virtual methods
.method public deleteAllData()V
    .locals 2

    .prologue
    .line 91
    iget-wide v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mNativeAwQuotaManagerBridgeImpl:J

    invoke-direct {p0, v0, v1}, Lorg/chromium/android_webview/AwQuotaManagerBridge;->nativeDeleteAllData(J)V

    .line 92
    return-void
.end method

.method public deleteOrigin(Ljava/lang/String;)V
    .locals 2
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 98
    iget-wide v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mNativeAwQuotaManagerBridgeImpl:J

    invoke-direct {p0, v0, v1, p1}, Lorg/chromium/android_webview/AwQuotaManagerBridge;->nativeDeleteOrigin(JLjava/lang/String;)V

    .line 99
    return-void
.end method

.method public getOrigins(Landroid/webkit/ValueCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Lorg/chromium/android_webview/AwQuotaManagerBridge$Origins;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Lorg/chromium/android_webview/AwQuotaManagerBridge$Origins;>;"
    invoke-direct {p0}, Lorg/chromium/android_webview/AwQuotaManagerBridge;->getNextId()I

    move-result v0

    .line 107
    .local v0, "callbackId":I
    sget-boolean v1, Lorg/chromium/android_webview/AwQuotaManagerBridge;->$assertionsDisabled:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mPendingGetOriginCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 108
    :cond_0
    iget-object v1, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mPendingGetOriginCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 109
    iget-wide v2, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mNativeAwQuotaManagerBridgeImpl:J

    invoke-direct {p0, v2, v3, v0}, Lorg/chromium/android_webview/AwQuotaManagerBridge;->nativeGetOrigins(JI)V

    .line 110
    return-void
.end method

.method public getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 7
    .param p1, "origin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lorg/chromium/android_webview/AwQuotaManagerBridge;->getNextId()I

    move-result v5

    .line 118
    .local v5, "callbackId":I
    sget-boolean v0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mPendingGetQuotaForOriginCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 119
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mPendingGetQuotaForOriginCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 120
    iget-wide v2, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mNativeAwQuotaManagerBridgeImpl:J

    const/4 v6, 0x1

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/android_webview/AwQuotaManagerBridge;->nativeGetUsageAndQuotaForOrigin(JLjava/lang/String;IZ)V

    .line 121
    return-void
.end method

.method public getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 7
    .param p1, "origin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 128
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Long;>;"
    invoke-direct {p0}, Lorg/chromium/android_webview/AwQuotaManagerBridge;->getNextId()I

    move-result v5

    .line 129
    .local v5, "callbackId":I
    sget-boolean v0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mPendingGetUsageForOriginCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 130
    :cond_0
    iget-object v0, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mPendingGetUsageForOriginCallbacks:Landroid/util/SparseArray;

    invoke-virtual {v0, v5, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    iget-wide v2, p0, Lorg/chromium/android_webview/AwQuotaManagerBridge;->mNativeAwQuotaManagerBridgeImpl:J

    const/4 v6, 0x0

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lorg/chromium/android_webview/AwQuotaManagerBridge;->nativeGetUsageAndQuotaForOrigin(JLjava/lang/String;IZ)V

    .line 132
    return-void
.end method

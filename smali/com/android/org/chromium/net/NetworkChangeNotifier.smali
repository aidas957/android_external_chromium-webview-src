.class public Lcom/android/org/chromium/net/NetworkChangeNotifier;
.super Ljava/lang/Object;
.source "NetworkChangeNotifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static sInstance:Lcom/android/org/chromium/net/NetworkChangeNotifier;


# instance fields
.field private mAutoDetector:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;

.field private final mConnectionTypeObservers:Lcom/android/org/chromium/base/ObserverList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/org/chromium/base/ObserverList",
            "<",
            "Lcom/android/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentConnectionType:I

.field private final mNativeChangeNotifiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/android/org/chromium/net/NetworkChangeNotifier;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->mCurrentConnectionType:I

    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->mContext:Landroid/content/Context;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Lcom/android/org/chromium/base/ObserverList;

    invoke-direct {v0}, Lcom/android/org/chromium/base/ObserverList;-><init>()V

    iput-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->mConnectionTypeObservers:Lcom/android/org/chromium/base/ObserverList;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/org/chromium/net/NetworkChangeNotifier;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/org/chromium/net/NetworkChangeNotifier;
    .param p1, "x1"    # I

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/android/org/chromium/net/NetworkChangeNotifier;->updateCurrentConnectionType(I)V

    return-void
.end method

.method private destroyAutoDetector()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->destroy()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;

    .line 125
    :cond_0
    return-void
.end method

.method public static forceConnectivityState(Z)V
    .locals 1
    .param p0, "networkAvailable"    # Z

    .prologue
    .line 167
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/org/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityState(Z)V

    .line 168
    invoke-static {}, Lcom/android/org/chromium/net/NetworkChangeNotifier;->getInstance()Lcom/android/org/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/android/org/chromium/net/NetworkChangeNotifier;->forceConnectivityStateInternal(Z)V

    .line 169
    return-void
.end method

.method private forceConnectivityStateInternal(Z)V
    .locals 4
    .param p1, "forceOnline"    # Z

    .prologue
    const/4 v2, 0x6

    const/4 v1, 0x0

    .line 172
    iget v3, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->mCurrentConnectionType:I

    if-eq v3, v2, :cond_1

    const/4 v0, 0x1

    .line 173
    .local v0, "connectionCurrentlyExists":Z
    :goto_0
    if-eq v0, p1, :cond_0

    .line 174
    if-eqz p1, :cond_2

    :goto_1
    invoke-direct {p0, v1}, Lcom/android/org/chromium/net/NetworkChangeNotifier;->updateCurrentConnectionType(I)V

    .line 176
    :cond_0
    return-void

    .end local v0    # "connectionCurrentlyExists":Z
    :cond_1
    move v0, v1

    .line 172
    goto :goto_0

    .restart local v0    # "connectionCurrentlyExists":Z
    :cond_2
    move v1, v2

    .line 174
    goto :goto_1
.end method

.method public static getInstance()Lcom/android/org/chromium/net/NetworkChangeNotifier;
    .locals 1

    .prologue
    .line 104
    sget-boolean v0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->$assertionsDisabled:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->sInstance:Lcom/android/org/chromium/net/NetworkChangeNotifier;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 105
    :cond_0
    sget-object v0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->sInstance:Lcom/android/org/chromium/net/NetworkChangeNotifier;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)Lcom/android/org/chromium/net/NetworkChangeNotifier;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 65
    sget-object v0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->sInstance:Lcom/android/org/chromium/net/NetworkChangeNotifier;

    if-nez v0, :cond_0

    .line 66
    new-instance v0, Lcom/android/org/chromium/net/NetworkChangeNotifier;

    invoke-direct {v0, p0}, Lcom/android/org/chromium/net/NetworkChangeNotifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->sInstance:Lcom/android/org/chromium/net/NetworkChangeNotifier;

    .line 68
    :cond_0
    sget-object v0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->sInstance:Lcom/android/org/chromium/net/NetworkChangeNotifier;

    return-object v0
.end method

.method private native nativeNotifyConnectionTypeChanged(JI)V
.end method

.method public static setAutoDetectConnectivityState(Z)V
    .locals 2
    .param p0, "shouldAutoDetect"    # Z

    .prologue
    .line 117
    invoke-static {}, Lcom/android/org/chromium/net/NetworkChangeNotifier;->getInstance()Lcom/android/org/chromium/net/NetworkChangeNotifier;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/org/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityStateInternal(ZZ)V

    .line 118
    return-void
.end method

.method private setAutoDetectConnectivityStateInternal(ZZ)V
    .locals 3
    .param p1, "shouldAutoDetect"    # Z
    .param p2, "alwaysWatchForChanges"    # Z

    .prologue
    .line 141
    if-eqz p1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;

    if-nez v0, :cond_0

    .line 143
    new-instance v0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;

    new-instance v1, Lcom/android/org/chromium/net/NetworkChangeNotifier$1;

    invoke-direct {v1, p0}, Lcom/android/org/chromium/net/NetworkChangeNotifier$1;-><init>(Lcom/android/org/chromium/net/NetworkChangeNotifier;)V

    iget-object v2, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2, p2}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;-><init>(Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;

    .line 152
    iget-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->mAutoDetector:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;

    invoke-virtual {v0}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/org/chromium/net/NetworkChangeNotifier;->updateCurrentConnectionType(I)V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 155
    :cond_1
    invoke-direct {p0}, Lcom/android/org/chromium/net/NetworkChangeNotifier;->destroyAutoDetector()V

    goto :goto_0
.end method

.method private updateCurrentConnectionType(I)V
    .locals 0
    .param p1, "newConnectionType"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->mCurrentConnectionType:I

    .line 180
    invoke-virtual {p0, p1}, Lcom/android/org/chromium/net/NetworkChangeNotifier;->notifyObserversOfConnectionTypeChange(I)V

    .line 181
    return-void
.end method


# virtual methods
.method public addNativeObserver(J)V
    .locals 3
    .param p1, "nativeChangeNotifier"    # J

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public getCurrentConnectionType()I
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->mCurrentConnectionType:I

    return v0
.end method

.method notifyObserversOfConnectionTypeChange(I)V
    .locals 6
    .param p1, "newConnectionType"    # I

    .prologue
    .line 187
    iget-object v3, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 188
    .local v1, "nativeChangeNotifier":Ljava/lang/Long;
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5, p1}, Lcom/android/org/chromium/net/NetworkChangeNotifier;->nativeNotifyConnectionTypeChanged(JI)V

    goto :goto_0

    .line 190
    .end local v1    # "nativeChangeNotifier":Ljava/lang/Long;
    :cond_0
    iget-object v3, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->mConnectionTypeObservers:Lcom/android/org/chromium/base/ObserverList;

    invoke-virtual {v3}, Lcom/android/org/chromium/base/ObserverList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;

    .line 191
    .local v2, "observer":Lcom/android/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;
    invoke-interface {v2, p1}, Lcom/android/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;->onConnectionTypeChanged(I)V

    goto :goto_1

    .line 193
    .end local v2    # "observer":Lcom/android/org/chromium/net/NetworkChangeNotifier$ConnectionTypeObserver;
    :cond_1
    return-void
.end method

.method public removeNativeObserver(J)V
    .locals 3
    .param p1, "nativeChangeNotifier"    # J

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier;->mNativeChangeNotifiers:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 98
    return-void
.end method

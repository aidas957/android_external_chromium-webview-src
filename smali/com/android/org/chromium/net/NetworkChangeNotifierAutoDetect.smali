.class public Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;
.super Landroid/content/BroadcastReceiver;
.source "NetworkChangeNotifierAutoDetect.java"

# interfaces
.implements Lcom/android/org/chromium/base/ApplicationStatus$ApplicationStateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;,
        Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;,
        Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;,
        Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;,
        Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    }
.end annotation


# instance fields
.field private mConnectionType:I

.field private mConnectivityManagerDelegate:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

.field private final mContext:Landroid/content/Context;

.field private final mIntentFilter:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

.field private final mObserver:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

.field private mRegistered:Z

.field private mWifiManagerDelegate:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

.field private mWifiSSID:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;Landroid/content/Context;Z)V
    .locals 1
    .param p1, "observer"    # Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "alwaysWatchForChanges"    # Z

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 102
    new-instance v0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    invoke-direct {v0}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mIntentFilter:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    .line 128
    iput-object p1, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    .line 129
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mContext:Landroid/content/Context;

    .line 130
    new-instance v0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-direct {v0, p2}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    .line 131
    new-instance v0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    invoke-direct {v0, p2}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    .line 132
    invoke-virtual {p0}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType()I

    move-result v0

    iput v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    .line 133
    invoke-direct {p0}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentWifiSSID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiSSID:Ljava/lang/String;

    .line 134
    if-eqz p3, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->registerReceiver()V

    .line 139
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-static {p0}, Lcom/android/org/chromium/base/ApplicationStatus;->registerApplicationStateListener(Lcom/android/org/chromium/base/ApplicationStatus$ApplicationStateListener;)V

    goto :goto_0
.end method

.method private connectionTypeChanged()V
    .locals 5

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType()I

    move-result v0

    .line 249
    .local v0, "newConnectionType":I
    invoke-direct {p0}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentWifiSSID()Ljava/lang/String;

    move-result-object v1

    .line 250
    .local v1, "newWifiSSID":Ljava/lang/String;
    iget v2, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    if-ne v0, v2, :cond_0

    iget-object v2, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    :goto_0
    return-void

    .line 253
    :cond_0
    iput v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    .line 254
    iput-object v1, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiSSID:Ljava/lang/String;

    .line 255
    const-string v2, "NetworkChangeNotifierAutoDetect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Network connectivity changed, type is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectionType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v2, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mObserver:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;

    invoke-interface {v2, v0}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;->onConnectionTypeChanged(I)V

    goto :goto_0
.end method

.method private getCurrentWifiSSID()Ljava/lang/String;
    .locals 2

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->getCurrentConnectionType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 226
    const-string v0, ""

    .line 227
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mWifiManagerDelegate:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;

    invoke-virtual {v0}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$WifiManagerDelegate;->getWifiSSID()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private registerReceiver()V
    .locals 2

    .prologue
    .line 163
    iget-boolean v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    if-nez v0, :cond_0

    .line 164
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    .line 165
    iget-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mIntentFilter:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkConnectivityIntentFilter;

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 167
    :cond_0
    return-void
.end method

.method private unregisterReceiver()V
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 174
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mRegistered:Z

    .line 175
    iget-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 177
    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->unregisterReceiver()V

    .line 157
    return-void
.end method

.method public getCurrentConnectionType()I
    .locals 4

    .prologue
    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 181
    iget-object v3, p0, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->mConnectivityManagerDelegate:Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;

    invoke-virtual {v3}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$ConnectivityManagerDelegate;->getNetworkState()Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;

    move-result-object v0

    .line 182
    .local v0, "networkState":Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;
    invoke-virtual {v0}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 183
    const/4 v1, 0x6

    .line 220
    :goto_0
    :pswitch_0
    return v1

    .line 186
    :cond_0
    invoke-virtual {v0}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkType()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    :pswitch_1
    move v1, v2

    .line 220
    goto :goto_0

    .line 188
    :pswitch_2
    const/4 v1, 0x1

    goto :goto_0

    .line 190
    :pswitch_3
    const/4 v1, 0x2

    goto :goto_0

    .line 194
    :pswitch_4
    const/4 v1, 0x7

    goto :goto_0

    .line 197
    :pswitch_5
    invoke-virtual {v0}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$NetworkState;->getNetworkSubType()I

    move-result v3

    packed-switch v3, :pswitch_data_1

    move v1, v2

    .line 217
    goto :goto_0

    .line 203
    :pswitch_6
    const/4 v1, 0x3

    goto :goto_0

    .line 213
    :pswitch_7
    const/4 v1, 0x4

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 197
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 233
    invoke-direct {p0}, Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect;->connectionTypeChanged()V

    .line 234
    return-void
.end method

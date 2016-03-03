.class final Lcom/android/webview/chromium/WebStorageAdapter;
.super Landroid/webkit/WebStorage;
.source "WebStorageAdapter.java"


# instance fields
.field private final mQuotaManagerBridge:Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge;)V
    .locals 0
    .param p1, "quotaManagerBridge"    # Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge;

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/webkit/WebStorage;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/android/webview/chromium/WebStorageAdapter;->mQuotaManagerBridge:Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge;

    .line 35
    return-void
.end method


# virtual methods
.method public deleteAllData()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/webview/chromium/WebStorageAdapter;->mQuotaManagerBridge:Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge;->deleteAllData()V

    .line 79
    return-void
.end method

.method public deleteOrigin(Ljava/lang/String;)V
    .locals 1
    .param p1, "origin"    # Ljava/lang/String;

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/webview/chromium/WebStorageAdapter;->mQuotaManagerBridge:Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge;->deleteOrigin(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public getOrigins(Landroid/webkit/ValueCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/util/Map;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/util/Map;>;"
    iget-object v0, p0, Lcom/android/webview/chromium/WebStorageAdapter;->mQuotaManagerBridge:Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge;

    new-instance v1, Lcom/android/webview/chromium/WebStorageAdapter$1;

    invoke-direct {v1, p0, p1}, Lcom/android/webview/chromium/WebStorageAdapter$1;-><init>(Lcom/android/webview/chromium/WebStorageAdapter;Landroid/webkit/ValueCallback;)V

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge;->getOrigins(Landroid/webkit/ValueCallback;)V

    .line 54
    return-void
.end method

.method public getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
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
    .line 63
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/webview/chromium/WebStorageAdapter;->mQuotaManagerBridge:Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge;->getQuotaForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 64
    return-void
.end method

.method public getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
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
    .line 58
    .local p2, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Long;>;"
    iget-object v0, p0, Lcom/android/webview/chromium/WebStorageAdapter;->mQuotaManagerBridge:Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge;

    invoke-virtual {v0, p1, p2}, Lcom/android/org/chromium/android_webview/AwQuotaManagerBridge;->getUsageForOrigin(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    .line 59
    return-void
.end method

.method public setQuotaForOrigin(Ljava/lang/String;J)V
    .locals 0
    .param p1, "origin"    # Ljava/lang/String;
    .param p2, "quota"    # J

    .prologue
    .line 69
    return-void
.end method

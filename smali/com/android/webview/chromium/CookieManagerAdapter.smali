.class public Lcom/android/webview/chromium/CookieManagerAdapter;
.super Landroid/webkit/CookieManager;
.source "CookieManagerAdapter.java"


# instance fields
.field mChromeCookieManager:Lcom/android/org/chromium/android_webview/AwCookieManager;


# direct methods
.method public constructor <init>(Lcom/android/org/chromium/android_webview/AwCookieManager;)V
    .locals 0
    .param p1, "chromeCookieManager"    # Lcom/android/org/chromium/android_webview/AwCookieManager;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/webkit/CookieManager;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/webview/chromium/CookieManagerAdapter;->mChromeCookieManager:Lcom/android/org/chromium/android_webview/AwCookieManager;

    .line 36
    return-void
.end method

.method private static fixupUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ParseException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v0, Landroid/net/WebAddress;

    invoke-direct {v0, p0}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized acceptCookie()Z
    .locals 1

    .prologue
    .line 45
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/CookieManagerAdapter;->mChromeCookieManager:Lcom/android/org/chromium/android_webview/AwCookieManager;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwCookieManager;->acceptCookie()Z
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

.method public declared-synchronized acceptThirdPartyCookies(Landroid/webkit/WebView;)Z
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;

    .prologue
    .line 55
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getAcceptThirdPartyCookies()Z
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

.method protected allowFileSchemeCookiesImpl()Z
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/webview/chromium/CookieManagerAdapter;->mChromeCookieManager:Lcom/android/org/chromium/android_webview/AwCookieManager;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwCookieManager;->allowFileSchemeCookies()Z

    move-result v0

    return v0
.end method

.method public flush()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/webview/chromium/CookieManagerAdapter;->mChromeCookieManager:Lcom/android/org/chromium/android_webview/AwCookieManager;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwCookieManager;->flushCookieStore()V

    .line 140
    return-void
.end method

.method public declared-synchronized getCookie(Landroid/net/WebAddress;)Ljava/lang/String;
    .locals 2
    .param p1, "uri"    # Landroid/net/WebAddress;

    .prologue
    .line 99
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/CookieManagerAdapter;->mChromeCookieManager:Lcom/android/org/chromium/android_webview/AwCookieManager;

    invoke-virtual {p1}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/android_webview/AwCookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/android/webview/chromium/CookieManagerAdapter;->mChromeCookieManager:Lcom/android/org/chromium/android_webview/AwCookieManager;

    invoke-static {p1}, Lcom/android/webview/chromium/CookieManagerAdapter;->fixupUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/org/chromium/android_webview/AwCookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 82
    :goto_0
    return-object v1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/net/ParseException;
    const-string v1, "CookieManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get cookies due to error parsing URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 82
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCookie(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 1
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "privateBrowsing"    # Z

    .prologue
    .line 88
    invoke-virtual {p0, p1}, Lcom/android/webview/chromium/CookieManagerAdapter;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized hasCookies()Z
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/CookieManagerAdapter;->mChromeCookieManager:Lcom/android/org/chromium/android_webview/AwCookieManager;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwCookieManager;->hasCookies()Z
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

.method public declared-synchronized hasCookies(Z)Z
    .locals 1
    .param p1, "privateBrowsing"    # Z

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/CookieManagerAdapter;->mChromeCookieManager:Lcom/android/org/chromium/android_webview/AwCookieManager;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwCookieManager;->hasCookies()Z
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

.method public removeAllCookie()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/webview/chromium/CookieManagerAdapter;->mChromeCookieManager:Lcom/android/org/chromium/android_webview/AwCookieManager;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwCookieManager;->removeAllCookies()V

    .line 115
    return-void
.end method

.method public removeAllCookies(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 119
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/webview/chromium/CookieManagerAdapter;->mChromeCookieManager:Lcom/android/org/chromium/android_webview/AwCookieManager;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwCookieManager;->removeAllCookies(Landroid/webkit/ValueCallback;)V

    .line 120
    return-void
.end method

.method public removeExpiredCookie()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/webview/chromium/CookieManagerAdapter;->mChromeCookieManager:Lcom/android/org/chromium/android_webview/AwCookieManager;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwCookieManager;->removeExpiredCookie()V

    .line 135
    return-void
.end method

.method public removeSessionCookie()V
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/android/webview/chromium/CookieManagerAdapter;->mChromeCookieManager:Lcom/android/org/chromium/android_webview/AwCookieManager;

    invoke-virtual {v0}, Lcom/android/org/chromium/android_webview/AwCookieManager;->removeSessionCookies()V

    .line 105
    return-void
.end method

.method public removeSessionCookies(Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 109
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/android/webview/chromium/CookieManagerAdapter;->mChromeCookieManager:Lcom/android/org/chromium/android_webview/AwCookieManager;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwCookieManager;->removeSessionCookies(Landroid/webkit/ValueCallback;)V

    .line 110
    return-void
.end method

.method public declared-synchronized setAcceptCookie(Z)V
    .locals 1
    .param p1, "accept"    # Z

    .prologue
    .line 40
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/webview/chromium/CookieManagerAdapter;->mChromeCookieManager:Lcom/android/org/chromium/android_webview/AwCookieManager;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwCookieManager;->setAcceptCookie(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 41
    monitor-exit p0

    return-void

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected setAcceptFileSchemeCookiesImpl(Z)V
    .locals 1
    .param p1, "accept"    # Z

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/webview/chromium/CookieManagerAdapter;->mChromeCookieManager:Lcom/android/org/chromium/android_webview/AwCookieManager;

    invoke-virtual {v0, p1}, Lcom/android/org/chromium/android_webview/AwCookieManager;->setAcceptFileSchemeCookies(Z)V

    .line 150
    return-void
.end method

.method public declared-synchronized setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V
    .locals 1
    .param p1, "webView"    # Landroid/webkit/WebView;
    .param p2, "accept"    # Z

    .prologue
    .line 50
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/webkit/WebSettings;->setAcceptThirdPartyCookies(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    :try_start_0
    iget-object v1, p0, Lcom/android/webview/chromium/CookieManagerAdapter;->mChromeCookieManager:Lcom/android/org/chromium/android_webview/AwCookieManager;

    invoke-static {p1}, Lcom/android/webview/chromium/CookieManagerAdapter;->fixupUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Lcom/android/org/chromium/android_webview/AwCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Landroid/net/ParseException;
    const-string v1, "CookieManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not setting cookie due to error parsing URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 70
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/webview/chromium/CookieManagerAdapter;->mChromeCookieManager:Lcom/android/org/chromium/android_webview/AwCookieManager;

    invoke-static {p1}, Lcom/android/webview/chromium/CookieManagerAdapter;->fixupUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, p2, p3}, Lcom/android/org/chromium/android_webview/AwCookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    :goto_0
    return-void

    .line 71
    :catch_0
    move-exception v0

    .line 72
    .local v0, "e":Landroid/net/ParseException;
    const-string v1, "CookieManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not setting cookie due to error parsing URL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

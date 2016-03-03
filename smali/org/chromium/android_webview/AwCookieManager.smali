.class public final Lorg/chromium/android_webview/AwCookieManager;
.super Ljava/lang/Object;
.source "AwCookieManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/android_webview/AwCookieManager$CookieCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    return-void
.end method

.method public static invokeBooleanCookieCallback(Lorg/chromium/android_webview/AwCookieManager$CookieCallback;Z)V
    .locals 1
    .param p1, "result"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/android_webview/AwCookieManager$CookieCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p0, "callback":Lorg/chromium/android_webview/AwCookieManager$CookieCallback;, "Lorg/chromium/android_webview/AwCookieManager$CookieCallback<Ljava/lang/Boolean;>;"
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/chromium/android_webview/AwCookieManager$CookieCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 174
    return-void
.end method

.method private native nativeAllowFileSchemeCookies()Z
.end method

.method private native nativeFlushCookieStore()V
.end method

.method private native nativeGetCookie(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeGetShouldAcceptCookies()Z
.end method

.method private native nativeHasCookies()Z
.end method

.method private native nativeRemoveAllCookies(Lorg/chromium/android_webview/AwCookieManager$CookieCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/android_webview/AwCookieManager$CookieCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeRemoveAllCookiesSync()V
.end method

.method private native nativeRemoveExpiredCookies()V
.end method

.method private native nativeRemoveSessionCookies(Lorg/chromium/android_webview/AwCookieManager$CookieCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/chromium/android_webview/AwCookieManager$CookieCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeRemoveSessionCookiesSync()V
.end method

.method private native nativeSetAcceptFileSchemeCookies(Z)V
.end method

.method private native nativeSetCookie(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/android_webview/AwCookieManager$CookieCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/chromium/android_webview/AwCookieManager$CookieCallback",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation
.end method

.method private native nativeSetCookieSync(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native nativeSetShouldAcceptCookies(Z)V
.end method


# virtual methods
.method public acceptCookie()Z
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lorg/chromium/android_webview/AwCookieManager;->nativeGetShouldAcceptCookies()Z

    move-result v0

    return v0
.end method

.method public allowFileSchemeCookies()Z
    .locals 1

    .prologue
    .line 154
    invoke-direct {p0}, Lorg/chromium/android_webview/AwCookieManager;->nativeAllowFileSchemeCookies()Z

    move-result v0

    return v0
.end method

.method public flushCookieStore()V
    .locals 0

    .prologue
    .line 147
    invoke-direct {p0}, Lorg/chromium/android_webview/AwCookieManager;->nativeFlushCookieStore()V

    .line 148
    return-void
.end method

.method public getCookie(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 99
    invoke-virtual {p1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/android_webview/AwCookieManager;->nativeGetCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "cookie":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    .end local v0    # "cookie":Ljava/lang/String;
    :cond_1
    return-object v0
.end method

.method public hasCookies()Z
    .locals 1

    .prologue
    .line 136
    invoke-direct {p0}, Lorg/chromium/android_webview/AwCookieManager;->nativeHasCookies()Z

    move-result v0

    return v0
.end method

.method public removeAllCookies()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Lorg/chromium/android_webview/AwCookieManager;->nativeRemoveAllCookiesSync()V

    .line 72
    return-void
.end method

.method public removeAllCookies(Landroid/webkit/ValueCallback;)V
    .locals 3
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
    .line 125
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-static {p1}, Lorg/chromium/android_webview/AwCookieManager$CookieCallback;->convert(Landroid/webkit/ValueCallback;)Lorg/chromium/android_webview/AwCookieManager$CookieCallback;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/android_webview/AwCookieManager;->nativeRemoveAllCookies(Lorg/chromium/android_webview/AwCookieManager$CookieCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "removeAllCookies must be called on a thread with a running Looper."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public removeExpiredCookie()V
    .locals 0

    .prologue
    .line 24
    invoke-virtual {p0}, Lorg/chromium/android_webview/AwCookieManager;->removeExpiredCookies()V

    .line 25
    return-void
.end method

.method public removeExpiredCookies()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lorg/chromium/android_webview/AwCookieManager;->nativeRemoveExpiredCookies()V

    .line 144
    return-void
.end method

.method public removeSessionCookies()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/chromium/android_webview/AwCookieManager;->nativeRemoveSessionCookiesSync()V

    .line 65
    return-void
.end method

.method public removeSessionCookies(Landroid/webkit/ValueCallback;)V
    .locals 3
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
    .line 111
    .local p1, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-static {p1}, Lorg/chromium/android_webview/AwCookieManager$CookieCallback;->convert(Landroid/webkit/ValueCallback;)Lorg/chromium/android_webview/AwCookieManager$CookieCallback;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/chromium/android_webview/AwCookieManager;->nativeRemoveSessionCookies(Lorg/chromium/android_webview/AwCookieManager$CookieCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "removeSessionCookies must be called on a thread with a running Looper."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setAcceptCookie(Z)V
    .locals 0
    .param p1, "accept"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lorg/chromium/android_webview/AwCookieManager;->nativeSetShouldAcceptCookies(Z)V

    .line 43
    return-void
.end method

.method public setAcceptFileSchemeCookies(Z)V
    .locals 0
    .param p1, "accept"    # Z

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lorg/chromium/android_webview/AwCookieManager;->nativeSetAcceptFileSchemeCookies(Z)V

    .line 168
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/chromium/android_webview/AwCookieManager;->nativeSetCookieSync(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public setCookie(Ljava/lang/String;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 3
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
    .line 85
    .local p3, "callback":Landroid/webkit/ValueCallback;, "Landroid/webkit/ValueCallback<Ljava/lang/Boolean;>;"
    :try_start_0
    invoke-static {p3}, Lorg/chromium/android_webview/AwCookieManager$CookieCallback;->convert(Landroid/webkit/ValueCallback;)Lorg/chromium/android_webview/AwCookieManager$CookieCallback;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lorg/chromium/android_webview/AwCookieManager;->nativeSetCookie(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/android_webview/AwCookieManager$CookieCallback;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-void

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/IllegalStateException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "SetCookie must be called on a thread with a running Looper."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.class Lcom/android/webview/chromium/WebViewDelegateFactory;
.super Ljava/lang/Object;
.source "WebViewDelegateFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/webview/chromium/WebViewDelegateFactory$Api21CompatibilityDelegate;,
        Lcom/android/webview/chromium/WebViewDelegateFactory$ProxyDelegate;,
        Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;
    }
.end annotation


# direct methods
.method static createApi21CompatibilityDelegate()Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;
    .locals 1

    .prologue
    .line 97
    new-instance v0, Lcom/android/webview/chromium/WebViewDelegateFactory$Api21CompatibilityDelegate;

    invoke-direct {v0}, Lcom/android/webview/chromium/WebViewDelegateFactory$Api21CompatibilityDelegate;-><init>()V

    return-object v0
.end method

.method static createProxyDelegate(Landroid/webkit/WebViewDelegate;)Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;
    .locals 1
    .param p0, "delegate"    # Landroid/webkit/WebViewDelegate;

    .prologue
    .line 85
    new-instance v0, Lcom/android/webview/chromium/WebViewDelegateFactory$ProxyDelegate;

    invoke-direct {v0, p0}, Lcom/android/webview/chromium/WebViewDelegateFactory$ProxyDelegate;-><init>(Landroid/webkit/WebViewDelegate;)V

    return-object v0
.end method

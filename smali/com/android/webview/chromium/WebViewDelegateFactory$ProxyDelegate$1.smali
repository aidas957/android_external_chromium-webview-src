.class Lcom/android/webview/chromium/WebViewDelegateFactory$ProxyDelegate$1;
.super Ljava/lang/Object;
.source "WebViewDelegateFactory.java"

# interfaces
.implements Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewDelegateFactory$ProxyDelegate;->setOnTraceEnabledChangeListener(Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewDelegateFactory$ProxyDelegate;

.field final synthetic val$listener:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewDelegateFactory$ProxyDelegate;Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewDelegateFactory$ProxyDelegate$1;->this$0:Lcom/android/webview/chromium/WebViewDelegateFactory$ProxyDelegate;

    iput-object p2, p0, Lcom/android/webview/chromium/WebViewDelegateFactory$ProxyDelegate$1;->val$listener:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTraceEnabledChange(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewDelegateFactory$ProxyDelegate$1;->val$listener:Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;

    invoke-interface {v0, p1}, Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;->onTraceEnabledChange(Z)V

    .line 120
    return-void
.end method

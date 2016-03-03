.class Lwebview/chromium/WebViewDelegateFactory$ProxyDelegate;
.super Ljava/lang/Object;
.source "WebViewDelegateFactory.java"

# interfaces
.implements Lwebview/chromium/WebViewDelegateFactory$WebViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwebview/chromium/WebViewDelegateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProxyDelegate"
.end annotation


# instance fields
.field delegate:Landroid/webkit/WebViewDelegate;


# direct methods
.method constructor <init>(Landroid/webkit/WebViewDelegate;)V
    .locals 0
    .param p1, "delegate"    # Landroid/webkit/WebViewDelegate;

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    iput-object p1, p0, Lwebview/chromium/WebViewDelegateFactory$ProxyDelegate;->delegate:Landroid/webkit/WebViewDelegate;

    .line 110
    return-void
.end method


# virtual methods
.method public addWebViewAssetPath(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 167
    iget-object v0, p0, Lwebview/chromium/WebViewDelegateFactory$ProxyDelegate;->delegate:Landroid/webkit/WebViewDelegate;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewDelegate;->addWebViewAssetPath(Landroid/content/Context;)V

    .line 168
    return-void
.end method

.method public callDrawGlFunction(Landroid/graphics/Canvas;J)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "nativeDrawGLFunctor"    # J

    .prologue
    .line 142
    iget-object v0, p0, Lwebview/chromium/WebViewDelegateFactory$ProxyDelegate;->delegate:Landroid/webkit/WebViewDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewDelegate;->callDrawGlFunction(Landroid/graphics/Canvas;J)V

    .line 143
    return-void
.end method

.method public canInvokeDrawGlFunctor(Landroid/view/View;)Z
    .locals 1
    .param p1, "containerView"    # Landroid/view/View;

    .prologue
    .line 131
    iget-object v0, p0, Lwebview/chromium/WebViewDelegateFactory$ProxyDelegate;->delegate:Landroid/webkit/WebViewDelegate;

    invoke-virtual {v0, p1}, Landroid/webkit/WebViewDelegate;->canInvokeDrawGlFunctor(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method public detachDrawGlFunctor(Landroid/view/View;J)V
    .locals 2
    .param p1, "containerView"    # Landroid/view/View;
    .param p2, "nativeDrawGLFunctor"    # J

    .prologue
    .line 147
    iget-object v0, p0, Lwebview/chromium/WebViewDelegateFactory$ProxyDelegate;->delegate:Landroid/webkit/WebViewDelegate;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebViewDelegate;->detachDrawGlFunctor(Landroid/view/View;J)V

    .line 148
    return-void
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lwebview/chromium/WebViewDelegateFactory$ProxyDelegate;->delegate:Landroid/webkit/WebViewDelegate;

    invoke-virtual {v0}, Landroid/webkit/WebViewDelegate;->getApplication()Landroid/app/Application;

    move-result-object v0

    return-object v0
.end method

.method public getErrorString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "errorCode"    # I

    .prologue
    .line 162
    iget-object v0, p0, Lwebview/chromium/WebViewDelegateFactory$ProxyDelegate;->delegate:Landroid/webkit/WebViewDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewDelegate;->getErrorString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageId(Landroid/content/res/Resources;Ljava/lang/String;)I
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 152
    iget-object v0, p0, Lwebview/chromium/WebViewDelegateFactory$ProxyDelegate;->delegate:Landroid/webkit/WebViewDelegate;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebViewDelegate;->getPackageId(Landroid/content/res/Resources;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public invokeDrawGlFunctor(Landroid/view/View;JZ)V
    .locals 2
    .param p1, "containerView"    # Landroid/view/View;
    .param p2, "nativeDrawGLFunctor"    # J
    .param p4, "waitForCompletion"    # Z

    .prologue
    .line 137
    iget-object v0, p0, Lwebview/chromium/WebViewDelegateFactory$ProxyDelegate;->delegate:Landroid/webkit/WebViewDelegate;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebViewDelegate;->invokeDrawGlFunctor(Landroid/view/View;JZ)V

    .line 138
    return-void
.end method

.method public isTraceTagEnabled()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lwebview/chromium/WebViewDelegateFactory$ProxyDelegate;->delegate:Landroid/webkit/WebViewDelegate;

    invoke-virtual {v0}, Landroid/webkit/WebViewDelegate;->isTraceTagEnabled()Z

    move-result v0

    return v0
.end method

.method public setOnTraceEnabledChangeListener(Lwebview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;)V
    .locals 2
    .param p1, "listener"    # Lwebview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;

    .prologue
    .line 114
    iget-object v0, p0, Lwebview/chromium/WebViewDelegateFactory$ProxyDelegate;->delegate:Landroid/webkit/WebViewDelegate;

    new-instance v1, Lwebview/chromium/WebViewDelegateFactory$ProxyDelegate$1;

    invoke-direct {v1, p0, p1}, Lwebview/chromium/WebViewDelegateFactory$ProxyDelegate$1;-><init>(Lwebview/chromium/WebViewDelegateFactory$ProxyDelegate;Lwebview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebViewDelegate;->setOnTraceEnabledChangeListener(Landroid/webkit/WebViewDelegate$OnTraceEnabledChangeListener;)V

    .line 122
    return-void
.end method

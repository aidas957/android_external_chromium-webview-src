.class interface abstract Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate;
.super Ljava/lang/Object;
.source "WebViewDelegateFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/webview/chromium/WebViewDelegateFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "WebViewDelegate"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;
    }
.end annotation


# virtual methods
.method public abstract addWebViewAssetPath(Landroid/content/Context;)V
.end method

.method public abstract callDrawGlFunction(Landroid/graphics/Canvas;J)V
.end method

.method public abstract canInvokeDrawGlFunctor(Landroid/view/View;)Z
.end method

.method public abstract detachDrawGlFunctor(Landroid/view/View;J)V
.end method

.method public abstract getApplication()Landroid/app/Application;
.end method

.method public abstract getErrorString(Landroid/content/Context;I)Ljava/lang/String;
.end method

.method public abstract getPackageId(Landroid/content/res/Resources;Ljava/lang/String;)I
.end method

.method public abstract invokeDrawGlFunctor(Landroid/view/View;JZ)V
.end method

.method public abstract isTraceTagEnabled()Z
.end method

.method public abstract setOnTraceEnabledChangeListener(Lcom/android/webview/chromium/WebViewDelegateFactory$WebViewDelegate$OnTraceEnabledChangeListener;)V
.end method

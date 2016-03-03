.class Lcom/android/webview/chromium/WebViewChromium$75;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->onFocusChanged(ZILandroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;

.field final synthetic val$direction:I

.field final synthetic val$focused:Z

.field final synthetic val$previouslyFocusedRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;ZILandroid/graphics/Rect;)V
    .locals 0

    .prologue
    .line 1821
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$75;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iput-boolean p2, p0, Lcom/android/webview/chromium/WebViewChromium$75;->val$focused:Z

    iput p3, p0, Lcom/android/webview/chromium/WebViewChromium$75;->val$direction:I

    iput-object p4, p0, Lcom/android/webview/chromium/WebViewChromium$75;->val$previouslyFocusedRect:Landroid/graphics/Rect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1824
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$75;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iget-boolean v1, p0, Lcom/android/webview/chromium/WebViewChromium$75;->val$focused:Z

    iget v2, p0, Lcom/android/webview/chromium/WebViewChromium$75;->val$direction:I

    iget-object v3, p0, Lcom/android/webview/chromium/WebViewChromium$75;->val$previouslyFocusedRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/webview/chromium/WebViewChromium;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 1825
    return-void
.end method

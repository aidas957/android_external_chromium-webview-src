.class Lcom/android/webview/chromium/WebViewChromium$67;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->onDraw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;

.field final synthetic val$canvas:Landroid/graphics/Canvas;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/graphics/Canvas;)V
    .locals 0

    .prologue
    .line 1663
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$67;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iput-object p2, p0, Lcom/android/webview/chromium/WebViewChromium$67;->val$canvas:Landroid/graphics/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1666
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$67;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium$67;->val$canvas:Landroid/graphics/Canvas;

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium;->onDraw(Landroid/graphics/Canvas;)V

    .line 1667
    return-void
.end method

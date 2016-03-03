.class Lcom/android/webview/chromium/WebViewChromium$66;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->onWindowVisibilityChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;

.field final synthetic val$visibility:I


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;I)V
    .locals 0

    .prologue
    .line 1648
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$66;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iput p2, p0, Lcom/android/webview/chromium/WebViewChromium$66;->val$visibility:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1651
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$66;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iget v1, p0, Lcom/android/webview/chromium/WebViewChromium$66;->val$visibility:I

    invoke-virtual {v0, v1}, Lcom/android/webview/chromium/WebViewChromium;->onWindowVisibilityChanged(I)V

    .line 1652
    return-void
.end method

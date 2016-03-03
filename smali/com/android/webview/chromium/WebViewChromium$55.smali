.class Lcom/android/webview/chromium/WebViewChromium$55;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->flingScroll(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;

.field final synthetic val$vx:I

.field final synthetic val$vy:I


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;II)V
    .locals 0

    .prologue
    .line 1400
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$55;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iput p2, p0, Lcom/android/webview/chromium/WebViewChromium$55;->val$vx:I

    iput p3, p0, Lcom/android/webview/chromium/WebViewChromium$55;->val$vy:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1403
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$55;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iget v1, p0, Lcom/android/webview/chromium/WebViewChromium$55;->val$vx:I

    iget v2, p0, Lcom/android/webview/chromium/WebViewChromium$55;->val$vy:I

    invoke-virtual {v0, v1, v2}, Lcom/android/webview/chromium/WebViewChromium;->flingScroll(II)V

    .line 1404
    return-void
.end method

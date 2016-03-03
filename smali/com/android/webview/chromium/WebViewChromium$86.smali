.class Lcom/android/webview/chromium/WebViewChromium$86;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->setLayerType(ILandroid/graphics/Paint;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;

.field final synthetic val$layerType:I

.field final synthetic val$paint:Landroid/graphics/Paint;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;ILandroid/graphics/Paint;)V
    .locals 0

    .prologue
    .line 1999
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$86;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iput p2, p0, Lcom/android/webview/chromium/WebViewChromium$86;->val$layerType:I

    iput-object p3, p0, Lcom/android/webview/chromium/WebViewChromium$86;->val$paint:Landroid/graphics/Paint;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2002
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$86;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iget v1, p0, Lcom/android/webview/chromium/WebViewChromium$86;->val$layerType:I

    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium$86;->val$paint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Lcom/android/webview/chromium/WebViewChromium;->setLayerType(ILandroid/graphics/Paint;)V

    .line 2003
    return-void
.end method

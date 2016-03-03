.class Lcom/android/webview/chromium/WebViewChromium$84;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$immediate:Z

.field final synthetic val$rect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;Landroid/view/View;Landroid/graphics/Rect;Z)V
    .locals 0

    .prologue
    .line 1967
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$84;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iput-object p2, p0, Lcom/android/webview/chromium/WebViewChromium$84;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/android/webview/chromium/WebViewChromium$84;->val$rect:Landroid/graphics/Rect;

    iput-boolean p4, p0, Lcom/android/webview/chromium/WebViewChromium$84;->val$immediate:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 1970
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$84;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    iget-object v1, p0, Lcom/android/webview/chromium/WebViewChromium$84;->val$child:Landroid/view/View;

    iget-object v2, p0, Lcom/android/webview/chromium/WebViewChromium$84;->val$rect:Landroid/graphics/Rect;

    iget-boolean v3, p0, Lcom/android/webview/chromium/WebViewChromium$84;->val$immediate:Z

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/webview/chromium/WebViewChromium;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1967
    invoke-virtual {p0}, Lcom/android/webview/chromium/WebViewChromium$84;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

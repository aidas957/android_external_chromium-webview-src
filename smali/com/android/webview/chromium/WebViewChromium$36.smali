.class Lcom/android/webview/chromium/WebViewChromium$36;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/webview/chromium/WebViewChromium;->getFavicon()Landroid/graphics/Bitmap;
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
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/webview/chromium/WebViewChromium;


# direct methods
.method constructor <init>(Lcom/android/webview/chromium/WebViewChromium;)V
    .locals 0

    .prologue
    .line 991
    iput-object p1, p0, Lcom/android/webview/chromium/WebViewChromium$36;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 994
    iget-object v0, p0, Lcom/android/webview/chromium/WebViewChromium$36;->this$0:Lcom/android/webview/chromium/WebViewChromium;

    invoke-virtual {v0}, Lcom/android/webview/chromium/WebViewChromium;->getFavicon()Landroid/graphics/Bitmap;

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
    .line 991
    invoke-virtual {p0}, Lcom/android/webview/chromium/WebViewChromium$36;->call()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

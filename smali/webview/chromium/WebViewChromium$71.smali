.class Lwebview/chromium/WebViewChromium$71;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromium;->onKeyUp(ILandroid/view/KeyEvent;)Z
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
.field final synthetic this$0:Lwebview/chromium/WebViewChromium;

.field final synthetic val$event:Landroid/view/KeyEvent;

.field final synthetic val$keyCode:I


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromium;ILandroid/view/KeyEvent;)V
    .locals 0

    .prologue
    .line 1749
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$71;->this$0:Lwebview/chromium/WebViewChromium;

    iput p2, p0, Lwebview/chromium/WebViewChromium$71;->val$keyCode:I

    iput-object p3, p0, Lwebview/chromium/WebViewChromium$71;->val$event:Landroid/view/KeyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 3

    .prologue
    .line 1752
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$71;->this$0:Lwebview/chromium/WebViewChromium;

    iget v1, p0, Lwebview/chromium/WebViewChromium$71;->val$keyCode:I

    iget-object v2, p0, Lwebview/chromium/WebViewChromium$71;->val$event:Landroid/view/KeyEvent;

    invoke-virtual {v0, v1, v2}, Lwebview/chromium/WebViewChromium;->onKeyUp(ILandroid/view/KeyEvent;)Z

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
    .line 1749
    invoke-virtual {p0}, Lwebview/chromium/WebViewChromium$71;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
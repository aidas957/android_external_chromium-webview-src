.class Lwebview/chromium/WebViewChromium$79;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromium;->onTouchEvent(Landroid/view/MotionEvent;)Z
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

.field final synthetic val$ev:Landroid/view/MotionEvent;


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromium;Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 1884
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$79;->this$0:Lwebview/chromium/WebViewChromium;

    iput-object p2, p0, Lwebview/chromium/WebViewChromium$79;->val$ev:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 1887
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$79;->this$0:Lwebview/chromium/WebViewChromium;

    iget-object v1, p0, Lwebview/chromium/WebViewChromium$79;->val$ev:Landroid/view/MotionEvent;

    invoke-virtual {v0, v1}, Lwebview/chromium/WebViewChromium;->onTouchEvent(Landroid/view/MotionEvent;)Z

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
    .line 1884
    invoke-virtual {p0}, Lwebview/chromium/WebViewChromium$79;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

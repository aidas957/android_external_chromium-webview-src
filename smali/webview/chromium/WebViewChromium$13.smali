.class Lwebview/chromium/WebViewChromium$13;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromium;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;
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
        "Landroid/webkit/WebBackForwardList;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromium;

.field final synthetic val$inState:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromium;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 518
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$13;->this$0:Lwebview/chromium/WebViewChromium;

    iput-object p2, p0, Lwebview/chromium/WebViewChromium$13;->val$inState:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/webkit/WebBackForwardList;
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$13;->this$0:Lwebview/chromium/WebViewChromium;

    iget-object v1, p0, Lwebview/chromium/WebViewChromium$13;->val$inState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lwebview/chromium/WebViewChromium;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

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
    .line 518
    invoke-virtual {p0}, Lwebview/chromium/WebViewChromium$13;->call()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

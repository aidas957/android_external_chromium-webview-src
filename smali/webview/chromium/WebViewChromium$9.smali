.class Lwebview/chromium/WebViewChromium$9;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromium;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromium;

.field final synthetic val$host:Ljava/lang/String;

.field final synthetic val$realm:Ljava/lang/String;


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromium;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 439
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$9;->this$0:Lwebview/chromium/WebViewChromium;

    iput-object p2, p0, Lwebview/chromium/WebViewChromium$9;->val$host:Ljava/lang/String;

    iput-object p3, p0, Lwebview/chromium/WebViewChromium$9;->val$realm:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 439
    invoke-virtual {p0}, Lwebview/chromium/WebViewChromium$9;->call()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 442
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$9;->this$0:Lwebview/chromium/WebViewChromium;

    iget-object v1, p0, Lwebview/chromium/WebViewChromium$9;->val$host:Ljava/lang/String;

    iget-object v2, p0, Lwebview/chromium/WebViewChromium$9;->val$realm:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lwebview/chromium/WebViewChromium;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

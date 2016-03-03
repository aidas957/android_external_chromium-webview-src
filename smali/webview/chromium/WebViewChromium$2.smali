.class Lwebview/chromium/WebViewChromium$2;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromium;->checkThread()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromium;

.field final synthetic val$threadViolation:Ljava/lang/RuntimeException;


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromium;Ljava/lang/RuntimeException;)V
    .locals 0

    .prologue
    .line 321
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$2;->this$0:Lwebview/chromium/WebViewChromium;

    iput-object p2, p0, Lwebview/chromium/WebViewChromium$2;->val$threadViolation:Ljava/lang/RuntimeException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$2;->val$threadViolation:Ljava/lang/RuntimeException;

    throw v0
.end method

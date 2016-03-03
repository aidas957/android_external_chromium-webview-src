.class Lwebview/chromium/WebViewChromium$47;
.super Ljava/lang/Object;
.source "WebViewChromium.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwebview/chromium/WebViewChromium;->findNext(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lwebview/chromium/WebViewChromium;

.field final synthetic val$forwards:Z


# direct methods
.method constructor <init>(Lwebview/chromium/WebViewChromium;Z)V
    .locals 0

    .prologue
    .line 1188
    iput-object p1, p0, Lwebview/chromium/WebViewChromium$47;->this$0:Lwebview/chromium/WebViewChromium;

    iput-boolean p2, p0, Lwebview/chromium/WebViewChromium$47;->val$forwards:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1191
    iget-object v0, p0, Lwebview/chromium/WebViewChromium$47;->this$0:Lwebview/chromium/WebViewChromium;

    iget-boolean v1, p0, Lwebview/chromium/WebViewChromium$47;->val$forwards:Z

    invoke-virtual {v0, v1}, Lwebview/chromium/WebViewChromium;->findNext(Z)V

    .line 1192
    return-void
.end method

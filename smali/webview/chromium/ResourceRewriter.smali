.class Lwebview/chromium/ResourceRewriter;
.super Ljava/lang/Object;
.source "ResourceRewriter.java"


# direct methods
.method public static rewriteRValues(I)V
    .locals 0
    .param p0, "packageId"    # I

    .prologue
    .line 36
    invoke-static {p0}, Lwebview/chromium/R;->onResourcesLoaded(I)V

    .line 37
    invoke-static {p0}, Lorg/chromium/ui/R;->onResourcesLoaded(I)V

    .line 38
    invoke-static {p0}, Lorg/chromium/content/R;->onResourcesLoaded(I)V

    .line 39
    return-void
.end method

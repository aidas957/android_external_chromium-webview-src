.class Lcom/android/webview/chromium/ResourceRewriter;
.super Ljava/lang/Object;
.source "ResourceRewriter.java"


# direct methods
.method public static rewriteRValues(I)V
    .locals 0
    .param p0, "packageId"    # I

    .prologue
    .line 36
    invoke-static {p0}, Lcom/android/webview/chromium/R;->onResourcesLoaded(I)V

    .line 37
    invoke-static {p0}, Lcom/android/org/chromium/ui/R;->onResourcesLoaded(I)V

    .line 38
    invoke-static {p0}, Lcom/android/org/chromium/content/R;->onResourcesLoaded(I)V

    .line 39
    return-void
.end method

.class public Lcom/android/org/chromium/content/browser/DeviceUtils;
.super Ljava/lang/Object;
.source "DeviceUtils.java"


# direct methods
.method public static addDeviceSpecificUserAgentSwitch(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    invoke-static {p0}, Lcom/android/org/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 24
    invoke-static {}, Lcom/android/org/chromium/base/CommandLine;->getInstance()Lcom/android/org/chromium/base/CommandLine;

    move-result-object v0

    const-string v1, "use-mobile-user-agent"

    invoke-virtual {v0, v1}, Lcom/android/org/chromium/base/CommandLine;->appendSwitch(Ljava/lang/String;)V

    .line 26
    :cond_0
    return-void
.end method
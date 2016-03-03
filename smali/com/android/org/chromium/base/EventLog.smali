.class public Lcom/android/org/chromium/base/EventLog;
.super Ljava/lang/Object;
.source "EventLog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static writeEvent(II)V
    .locals 0
    .param p0, "tag"    # I
    .param p1, "value"    # I

    .prologue
    .line 15
    invoke-static {p0, p1}, Landroid/util/EventLog;->writeEvent(II)I

    .line 16
    return-void
.end method

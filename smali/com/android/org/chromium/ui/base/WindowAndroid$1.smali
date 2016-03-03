.class Lcom/android/org/chromium/ui/base/WindowAndroid$1;
.super Ljava/lang/Object;
.source "WindowAndroid.java"

# interfaces
.implements Lcom/android/org/chromium/ui/VSyncMonitor$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/chromium/ui/base/WindowAndroid;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/ui/base/WindowAndroid;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/ui/base/WindowAndroid;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/android/org/chromium/ui/base/WindowAndroid$1;->this$0:Lcom/android/org/chromium/ui/base/WindowAndroid;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVSync(Lcom/android/org/chromium/ui/VSyncMonitor;J)V
    .locals 8
    .param p1, "monitor"    # Lcom/android/org/chromium/ui/VSyncMonitor;
    .param p2, "vsyncTimeMicros"    # J

    .prologue
    .line 53
    iget-object v0, p0, Lcom/android/org/chromium/ui/base/WindowAndroid$1;->this$0:Lcom/android/org/chromium/ui/base/WindowAndroid;

    # getter for: Lcom/android/org/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J
    invoke-static {v0}, Lcom/android/org/chromium/ui/base/WindowAndroid;->access$000(Lcom/android/org/chromium/ui/base/WindowAndroid;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 54
    iget-object v1, p0, Lcom/android/org/chromium/ui/base/WindowAndroid$1;->this$0:Lcom/android/org/chromium/ui/base/WindowAndroid;

    iget-object v0, p0, Lcom/android/org/chromium/ui/base/WindowAndroid$1;->this$0:Lcom/android/org/chromium/ui/base/WindowAndroid;

    # getter for: Lcom/android/org/chromium/ui/base/WindowAndroid;->mNativeWindowAndroid:J
    invoke-static {v0}, Lcom/android/org/chromium/ui/base/WindowAndroid;->access$000(Lcom/android/org/chromium/ui/base/WindowAndroid;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/org/chromium/ui/base/WindowAndroid$1;->this$0:Lcom/android/org/chromium/ui/base/WindowAndroid;

    # getter for: Lcom/android/org/chromium/ui/base/WindowAndroid;->mVSyncMonitor:Lcom/android/org/chromium/ui/VSyncMonitor;
    invoke-static {v0}, Lcom/android/org/chromium/ui/base/WindowAndroid;->access$100(Lcom/android/org/chromium/ui/base/WindowAndroid;)Lcom/android/org/chromium/ui/VSyncMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/org/chromium/ui/VSyncMonitor;->getVSyncPeriodInMicroseconds()J

    move-result-wide v6

    move-wide v4, p2

    # invokes: Lcom/android/org/chromium/ui/base/WindowAndroid;->nativeOnVSync(JJJ)V
    invoke-static/range {v1 .. v7}, Lcom/android/org/chromium/ui/base/WindowAndroid;->access$200(Lcom/android/org/chromium/ui/base/WindowAndroid;JJJ)V

    .line 58
    :cond_0
    return-void
.end method

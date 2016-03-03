.class Lcom/android/org/chromium/ui/VSyncMonitor$2;
.super Ljava/lang/Object;
.source "VSyncMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/ui/VSyncMonitor;-><init>(Landroid/content/Context;Lcom/android/org/chromium/ui/VSyncMonitor$Listener;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/ui/VSyncMonitor;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/ui/VSyncMonitor;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/org/chromium/ui/VSyncMonitor$2;->this$0:Lcom/android/org/chromium/ui/VSyncMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 120
    const-string v2, "VSyncTimer"

    invoke-static {v2}, Lcom/android/org/chromium/base/TraceEvent;->begin(Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lcom/android/org/chromium/ui/VSyncMonitor$2;->this$0:Lcom/android/org/chromium/ui/VSyncMonitor;

    # invokes: Lcom/android/org/chromium/ui/VSyncMonitor;->getCurrentNanoTime()J
    invoke-static {v2}, Lcom/android/org/chromium/ui/VSyncMonitor;->access$300(Lcom/android/org/chromium/ui/VSyncMonitor;)J

    move-result-wide v0

    .line 122
    .local v0, "currentTime":J
    iget-object v2, p0, Lcom/android/org/chromium/ui/VSyncMonitor$2;->this$0:Lcom/android/org/chromium/ui/VSyncMonitor;

    # invokes: Lcom/android/org/chromium/ui/VSyncMonitor;->onVSyncCallback(JJ)V
    invoke-static {v2, v0, v1, v0, v1}, Lcom/android/org/chromium/ui/VSyncMonitor;->access$400(Lcom/android/org/chromium/ui/VSyncMonitor;JJ)V

    .line 123
    const-string v2, "VSyncTimer"

    invoke-static {v2}, Lcom/android/org/chromium/base/TraceEvent;->end(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.class Lcom/android/org/chromium/media/MediaDrmBridge$1;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/media/MediaDrmBridge;->resumePendingOperations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/media/MediaDrmBridge;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/media/MediaDrmBridge;)V
    .locals 0

    .prologue
    .line 468
    iput-object p1, p0, Lcom/android/org/chromium/media/MediaDrmBridge$1;->this$0:Lcom/android/org/chromium/media/MediaDrmBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaDrmBridge$1;->this$0:Lcom/android/org/chromium/media/MediaDrmBridge;

    # invokes: Lcom/android/org/chromium/media/MediaDrmBridge;->processPendingCreateSessionData()V
    invoke-static {v0}, Lcom/android/org/chromium/media/MediaDrmBridge;->access$500(Lcom/android/org/chromium/media/MediaDrmBridge;)V

    .line 472
    return-void
.end method

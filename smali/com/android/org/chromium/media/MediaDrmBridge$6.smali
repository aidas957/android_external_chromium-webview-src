.class Lcom/android/org/chromium/media/MediaDrmBridge$6;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/media/MediaDrmBridge;->onSessionError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/media/MediaDrmBridge;

.field final synthetic val$sessionId:I


# direct methods
.method constructor <init>(Lcom/android/org/chromium/media/MediaDrmBridge;I)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lcom/android/org/chromium/media/MediaDrmBridge$6;->this$0:Lcom/android/org/chromium/media/MediaDrmBridge;

    iput p2, p0, Lcom/android/org/chromium/media/MediaDrmBridge$6;->val$sessionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 766
    iget-object v0, p0, Lcom/android/org/chromium/media/MediaDrmBridge$6;->this$0:Lcom/android/org/chromium/media/MediaDrmBridge;

    iget-object v1, p0, Lcom/android/org/chromium/media/MediaDrmBridge$6;->this$0:Lcom/android/org/chromium/media/MediaDrmBridge;

    # getter for: Lcom/android/org/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J
    invoke-static {v1}, Lcom/android/org/chromium/media/MediaDrmBridge;->access$600(Lcom/android/org/chromium/media/MediaDrmBridge;)J

    move-result-wide v2

    iget v1, p0, Lcom/android/org/chromium/media/MediaDrmBridge$6;->val$sessionId:I

    # invokes: Lcom/android/org/chromium/media/MediaDrmBridge;->nativeOnSessionError(JI)V
    invoke-static {v0, v2, v3, v1}, Lcom/android/org/chromium/media/MediaDrmBridge;->access$1100(Lcom/android/org/chromium/media/MediaDrmBridge;JI)V

    .line 767
    return-void
.end method

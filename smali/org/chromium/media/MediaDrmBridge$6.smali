.class Lorg/chromium/media/MediaDrmBridge$6;
.super Ljava/lang/Object;
.source "MediaDrmBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/media/MediaDrmBridge;->onSessionError(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/media/MediaDrmBridge;

.field final synthetic val$sessionId:I


# direct methods
.method constructor <init>(Lorg/chromium/media/MediaDrmBridge;I)V
    .locals 0

    .prologue
    .line 763
    iput-object p1, p0, Lorg/chromium/media/MediaDrmBridge$6;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iput p2, p0, Lorg/chromium/media/MediaDrmBridge$6;->val$sessionId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 766
    iget-object v0, p0, Lorg/chromium/media/MediaDrmBridge$6;->this$0:Lorg/chromium/media/MediaDrmBridge;

    iget-object v1, p0, Lorg/chromium/media/MediaDrmBridge$6;->this$0:Lorg/chromium/media/MediaDrmBridge;

    # getter for: Lorg/chromium/media/MediaDrmBridge;->mNativeMediaDrmBridge:J
    invoke-static {v1}, Lorg/chromium/media/MediaDrmBridge;->access$600(Lorg/chromium/media/MediaDrmBridge;)J

    move-result-wide v2

    iget v1, p0, Lorg/chromium/media/MediaDrmBridge$6;->val$sessionId:I

    # invokes: Lorg/chromium/media/MediaDrmBridge;->nativeOnSessionError(JI)V
    invoke-static {v0, v2, v3, v1}, Lorg/chromium/media/MediaDrmBridge;->access$1100(Lorg/chromium/media/MediaDrmBridge;JI)V

    .line 767
    return-void
.end method

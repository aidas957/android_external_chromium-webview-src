.class Lcom/android/org/chromium/net/NetworkChangeNotifier$1;
.super Ljava/lang/Object;
.source "NetworkChangeNotifier.java"

# interfaces
.implements Lcom/android/org/chromium/net/NetworkChangeNotifierAutoDetect$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/org/chromium/net/NetworkChangeNotifier;->setAutoDetectConnectivityStateInternal(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/org/chromium/net/NetworkChangeNotifier;


# direct methods
.method constructor <init>(Lcom/android/org/chromium/net/NetworkChangeNotifier;)V
    .locals 0

    .prologue
    .line 144
    iput-object p1, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier$1;->this$0:Lcom/android/org/chromium/net/NetworkChangeNotifier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionTypeChanged(I)V
    .locals 1
    .param p1, "newConnectionType"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lcom/android/org/chromium/net/NetworkChangeNotifier$1;->this$0:Lcom/android/org/chromium/net/NetworkChangeNotifier;

    # invokes: Lcom/android/org/chromium/net/NetworkChangeNotifier;->updateCurrentConnectionType(I)V
    invoke-static {v0, p1}, Lcom/android/org/chromium/net/NetworkChangeNotifier;->access$000(Lcom/android/org/chromium/net/NetworkChangeNotifier;I)V

    .line 148
    return-void
.end method

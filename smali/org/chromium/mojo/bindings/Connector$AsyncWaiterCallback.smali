.class Lorg/chromium/mojo/bindings/Connector$AsyncWaiterCallback;
.super Ljava/lang/Object;
.source "Connector.java"

# interfaces
.implements Lorg/chromium/mojo/system/AsyncWaiter$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/chromium/mojo/bindings/Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncWaiterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/chromium/mojo/bindings/Connector;


# direct methods
.method private constructor <init>(Lorg/chromium/mojo/bindings/Connector;)V
    .locals 0

    .prologue
    .line 140
    iput-object p1, p0, Lorg/chromium/mojo/bindings/Connector$AsyncWaiterCallback;->this$0:Lorg/chromium/mojo/bindings/Connector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/chromium/mojo/bindings/Connector;Lorg/chromium/mojo/bindings/Connector$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/chromium/mojo/bindings/Connector;
    .param p2, "x1"    # Lorg/chromium/mojo/bindings/Connector$1;

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lorg/chromium/mojo/bindings/Connector$AsyncWaiterCallback;-><init>(Lorg/chromium/mojo/bindings/Connector;)V

    return-void
.end method


# virtual methods
.method public onError(Lorg/chromium/mojo/system/MojoException;)V
    .locals 1
    .param p1, "exception"    # Lorg/chromium/mojo/system/MojoException;

    .prologue
    .line 155
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector$AsyncWaiterCallback;->this$0:Lorg/chromium/mojo/bindings/Connector;

    # invokes: Lorg/chromium/mojo/bindings/Connector;->onError(Lorg/chromium/mojo/system/MojoException;)V
    invoke-static {v0, p1}, Lorg/chromium/mojo/bindings/Connector;->access$200(Lorg/chromium/mojo/bindings/Connector;Lorg/chromium/mojo/system/MojoException;)V

    .line 156
    return-void
.end method

.method public onResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 147
    iget-object v0, p0, Lorg/chromium/mojo/bindings/Connector$AsyncWaiterCallback;->this$0:Lorg/chromium/mojo/bindings/Connector;

    # invokes: Lorg/chromium/mojo/bindings/Connector;->onAsyncWaiterResult(I)V
    invoke-static {v0, p1}, Lorg/chromium/mojo/bindings/Connector;->access$100(Lorg/chromium/mojo/bindings/Connector;I)V

    .line 148
    return-void
.end method

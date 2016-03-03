.class public Lorg/chromium/content/browser/ServiceRegistry;
.super Ljava/lang/Object;
.source "ServiceRegistry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory;
    }
.end annotation


# instance fields
.field private final mCore:Lorg/chromium/mojo/system/Core;

.field private mNativeServiceRegistryAndroid:J


# direct methods
.method private constructor <init>(JLorg/chromium/mojo/system/Core;)V
    .locals 1
    .param p1, "nativeServiceRegistryAndroid"    # J
    .param p3, "core"    # Lorg/chromium/mojo/system/Core;

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-wide p1, p0, Lorg/chromium/content/browser/ServiceRegistry;->mNativeServiceRegistryAndroid:J

    .line 48
    iput-object p3, p0, Lorg/chromium/content/browser/ServiceRegistry;->mCore:Lorg/chromium/mojo/system/Core;

    .line 49
    return-void
.end method

.method private static create(J)Lorg/chromium/content/browser/ServiceRegistry;
    .locals 2
    .param p0, "nativeServiceRegistryAndroid"    # J

    .prologue
    .line 53
    new-instance v0, Lorg/chromium/content/browser/ServiceRegistry;

    invoke-static {}, Lorg/chromium/mojo/system/impl/CoreImpl;->getInstance()Lorg/chromium/mojo/system/Core;

    move-result-object v1

    invoke-direct {v0, p0, p1, v1}, Lorg/chromium/content/browser/ServiceRegistry;-><init>(JLorg/chromium/mojo/system/Core;)V

    return-object v0
.end method

.method private createImplAndAttach(ILorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory;)V
    .locals 2
    .param p1, "nativeHandle"    # I
    .param p2, "manager"    # Lorg/chromium/mojo/bindings/Interface$Manager;
    .param p3, "factory"    # Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory;

    .prologue
    .line 67
    iget-object v1, p0, Lorg/chromium/content/browser/ServiceRegistry;->mCore:Lorg/chromium/mojo/system/Core;

    invoke-interface {v1, p1}, Lorg/chromium/mojo/system/Core;->acquireNativeHandle(I)Lorg/chromium/mojo/system/UntypedHandle;

    move-result-object v1

    invoke-interface {v1}, Lorg/chromium/mojo/system/UntypedHandle;->toMessagePipeHandle()Lorg/chromium/mojo/system/MessagePipeHandle;

    move-result-object v0

    .line 68
    .local v0, "handle":Lorg/chromium/mojo/system/MessagePipeHandle;
    invoke-interface {p3}, Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory;->createImpl()Lorg/chromium/mojo/bindings/Interface;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Lorg/chromium/mojo/bindings/Interface$Manager;->bind(Lorg/chromium/mojo/bindings/Interface;Lorg/chromium/mojo/system/MessagePipeHandle;)V

    .line 69
    return-void
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 58
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/chromium/content/browser/ServiceRegistry;->mNativeServiceRegistryAndroid:J

    .line 59
    return-void
.end method

.method private native nativeAddService(JLorg/chromium/mojo/bindings/Interface$Manager;Lorg/chromium/content/browser/ServiceRegistry$ImplementationFactory;Ljava/lang/String;)V
.end method

.method private native nativeConnectToRemoteService(JLjava/lang/String;I)V
.end method

.method private native nativeRemoveService(JLjava/lang/String;)V
.end method

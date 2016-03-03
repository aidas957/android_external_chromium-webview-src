.class public final Lorg/chromium/mojo/system/MojoResult;
.super Ljava/lang/Object;
.source "MojoResult.java"


# direct methods
.method public static describe(I)Ljava/lang/String;
    .locals 1
    .param p0, "mCode"    # I

    .prologue
    .line 40
    packed-switch p0, :pswitch_data_0

    .line 78
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 42
    :pswitch_0
    const-string v0, "OK"

    goto :goto_0

    .line 44
    :pswitch_1
    const-string v0, "CANCELLED"

    goto :goto_0

    .line 46
    :pswitch_2
    const-string v0, "UNKNOWN"

    goto :goto_0

    .line 48
    :pswitch_3
    const-string v0, "INVALID_ARGUMENT"

    goto :goto_0

    .line 50
    :pswitch_4
    const-string v0, "DEADLINE_EXCEEDED"

    goto :goto_0

    .line 52
    :pswitch_5
    const-string v0, "NOT_FOUND"

    goto :goto_0

    .line 54
    :pswitch_6
    const-string v0, "ALREADY_EXISTS"

    goto :goto_0

    .line 56
    :pswitch_7
    const-string v0, "PERMISSION_DENIED"

    goto :goto_0

    .line 58
    :pswitch_8
    const-string v0, "RESOURCE_EXHAUSTED"

    goto :goto_0

    .line 60
    :pswitch_9
    const-string v0, "FAILED_PRECONDITION"

    goto :goto_0

    .line 62
    :pswitch_a
    const-string v0, "ABORTED"

    goto :goto_0

    .line 64
    :pswitch_b
    const-string v0, "OUT_OF_RANGE"

    goto :goto_0

    .line 66
    :pswitch_c
    const-string v0, "UNIMPLEMENTED"

    goto :goto_0

    .line 68
    :pswitch_d
    const-string v0, "INTERNAL"

    goto :goto_0

    .line 70
    :pswitch_e
    const-string v0, "UNAVAILABLE"

    goto :goto_0

    .line 72
    :pswitch_f
    const-string v0, "DATA_LOSS"

    goto :goto_0

    .line 74
    :pswitch_10
    const-string v0, "BUSY"

    goto :goto_0

    .line 76
    :pswitch_11
    const-string v0, "SHOULD_WAIT"

    goto :goto_0

    .line 40
    :pswitch_data_0
    .packed-switch -0x11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

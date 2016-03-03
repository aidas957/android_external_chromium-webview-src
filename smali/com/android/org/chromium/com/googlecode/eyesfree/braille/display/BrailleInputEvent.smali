.class public Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;
.super Ljava/lang/Object;
.source "BrailleInputEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final CMD_NAMES:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private static final NAMES_TO_CMDS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mArgument:I

.field private final mCommand:I

.field private final mEventTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 147
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    .line 149
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->NAMES_TO_CMDS:Ljava/util/HashMap;

    .line 152
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/4 v2, 0x1

    const-string v3, "CMD_NAV_LINE_PREVIOUS"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 153
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/4 v2, 0x2

    const-string v3, "CMD_NAV_LINE_NEXT"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 154
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/4 v2, 0x3

    const-string v3, "CMD_NAV_ITEM_PREVIOUS"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 155
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/4 v2, 0x4

    const-string v3, "CMD_NAV_ITEM_NEXT"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 156
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/4 v2, 0x5

    const-string v3, "CMD_NAV_PAN_LEFT"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 157
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/4 v2, 0x6

    const-string v3, "CMD_NAV_PAN_RIGHT"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 158
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/4 v2, 0x7

    const-string v3, "CMD_NAV_TOP"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 159
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x8

    const-string v3, "CMD_NAV_BOTTOM"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 160
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x14

    const-string v3, "CMD_ACTIVATE_CURRENT"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 161
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x1e

    const-string v3, "CMD_SCROLL_BACKWARD"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 162
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x1f

    const-string v3, "CMD_SCROLL_FORWARD"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 163
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x28

    const-string v3, "CMD_SELECTION_START"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 164
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x29

    const-string v3, "CMD_SELECTION_END"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 165
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x2a

    const-string v3, "CMD_SELECTION_SELECT_ALL"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 166
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x2b

    const-string v3, "CMD_SELECTION_CUT"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 167
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x2c

    const-string v3, "CMD_SELECTION_COPY"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 168
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x2d

    const-string v3, "CMD_SELECTION_PASTE"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 169
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x32

    const-string v3, "CMD_ROUTE"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 170
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x3c

    const-string v3, "CMD_BRAILLE_KEY"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 171
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x46

    const-string v3, "CMD_KEY_ENTER"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 172
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x47

    const-string v3, "CMD_KEY_DEL"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 173
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x48

    const-string v3, "CMD_KEY_FORWARD_DEL"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 174
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x5a

    const-string v3, "CMD_GLOBAL_BACK"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 175
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x5b

    const-string v3, "CMD_GLOBAL_HOME"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 176
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x5c

    const-string v3, "CMD_GLOBAL_RECENTS"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 177
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x5d

    const-string v3, "CMD_GLOBAL_NOTIFICATIONS"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 178
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    const/16 v2, 0x64

    const-string v3, "CMD_HELP"

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 179
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 180
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->NAMES_TO_CMDS:Ljava/util/HashMap;

    sget-object v2, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    sget-object v3, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 270
    :cond_0
    new-instance v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent$1;

    invoke-direct {v1}, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent$1;-><init>()V

    sput-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 295
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->mCommand:I

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->mArgument:I

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->mEventTime:J

    .line 299
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent$1;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static commandToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "command"    # I

    .prologue
    .line 224
    sget-object v1, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->CMD_NAMES:Landroid/util/SparseArray;

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 225
    .local v0, "ret":Ljava/lang/String;
    if-eqz v0, :cond_0

    .end local v0    # "ret":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "ret":Ljava/lang/String;
    :cond_0
    const-string v0, "(unknown)"

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 285
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "BrailleInputEvent {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    const-string v1, "amd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    iget v1, p0, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->mCommand:I

    invoke-static {v1}, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->commandToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v1, ", arg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    iget v1, p0, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->mArgument:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 264
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 290
    iget v0, p0, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->mCommand:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget v0, p0, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->mArgument:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 292
    iget-wide v0, p0, Lcom/android/org/chromium/com/googlecode/eyesfree/braille/display/BrailleInputEvent;->mEventTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 293
    return-void
.end method

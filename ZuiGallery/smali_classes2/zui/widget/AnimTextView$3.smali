.class synthetic Lzui/widget/AnimTextView$3;
.super Ljava/lang/Object;
.source "AnimTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/AnimTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$zui$widget$AnimTextView$AnimationType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 258
    invoke-static {}, Lzui/widget/AnimTextView$AnimationType;->values()[Lzui/widget/AnimTextView$AnimationType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lzui/widget/AnimTextView$3;->$SwitchMap$zui$widget$AnimTextView$AnimationType:[I

    :try_start_0
    sget-object v1, Lzui/widget/AnimTextView$AnimationType;->TWEAK:Lzui/widget/AnimTextView$AnimationType;

    invoke-virtual {v1}, Lzui/widget/AnimTextView$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lzui/widget/AnimTextView$3;->$SwitchMap$zui$widget$AnimTextView$AnimationType:[I

    sget-object v1, Lzui/widget/AnimTextView$AnimationType;->ROTATE:Lzui/widget/AnimTextView$AnimationType;

    invoke-virtual {v1}, Lzui/widget/AnimTextView$AnimationType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method

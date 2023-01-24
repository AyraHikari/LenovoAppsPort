.class public final enum Lzui/widget/AnimTextView$AnimationType;
.super Ljava/lang/Enum;
.source "AnimTextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzui/widget/AnimTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzui/widget/AnimTextView$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzui/widget/AnimTextView$AnimationType;

.field public static final enum ROTATE:Lzui/widget/AnimTextView$AnimationType;

.field public static final enum TWEAK:Lzui/widget/AnimTextView$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 238
    new-instance v0, Lzui/widget/AnimTextView$AnimationType;

    const-string v1, "TWEAK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzui/widget/AnimTextView$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzui/widget/AnimTextView$AnimationType;->TWEAK:Lzui/widget/AnimTextView$AnimationType;

    new-instance v0, Lzui/widget/AnimTextView$AnimationType;

    const-string v1, "ROTATE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lzui/widget/AnimTextView$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzui/widget/AnimTextView$AnimationType;->ROTATE:Lzui/widget/AnimTextView$AnimationType;

    const/4 v1, 0x2

    new-array v1, v1, [Lzui/widget/AnimTextView$AnimationType;

    .line 237
    sget-object v4, Lzui/widget/AnimTextView$AnimationType;->TWEAK:Lzui/widget/AnimTextView$AnimationType;

    aput-object v4, v1, v2

    aput-object v0, v1, v3

    sput-object v1, Lzui/widget/AnimTextView$AnimationType;->$VALUES:[Lzui/widget/AnimTextView$AnimationType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 237
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzui/widget/AnimTextView$AnimationType;
    .locals 1

    .line 237
    const-class v0, Lzui/widget/AnimTextView$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzui/widget/AnimTextView$AnimationType;

    return-object p0
.end method

.method public static values()[Lzui/widget/AnimTextView$AnimationType;
    .locals 1

    .line 237
    sget-object v0, Lzui/widget/AnimTextView$AnimationType;->$VALUES:[Lzui/widget/AnimTextView$AnimationType;

    invoke-virtual {v0}, [Lzui/widget/AnimTextView$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzui/widget/AnimTextView$AnimationType;

    return-object v0
.end method

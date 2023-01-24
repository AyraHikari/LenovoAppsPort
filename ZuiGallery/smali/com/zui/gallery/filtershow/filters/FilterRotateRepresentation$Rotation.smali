.class public final enum Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;
.super Ljava/lang/Enum;
.source "FilterRotateRepresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Rotation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

.field public static final enum NINETY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

.field public static final enum ONE_EIGHTY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

.field public static final enum TWO_SEVENTY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

.field public static final enum ZERO:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;


# instance fields
.field private final mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 42
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    const-string v1, "ZERO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ZERO:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    const-string v1, "NINETY"

    const/4 v3, 0x1

    const/16 v4, 0x5a

    invoke-direct {v0, v1, v3, v4}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->NINETY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    const-string v1, "ONE_EIGHTY"

    const/4 v4, 0x2

    const/16 v5, 0xb4

    invoke-direct {v0, v1, v4, v5}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ONE_EIGHTY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    const-string v1, "TWO_SEVENTY"

    const/4 v5, 0x3

    const/16 v6, 0x10e

    invoke-direct {v0, v1, v5, v6}, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->TWO_SEVENTY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    .line 41
    sget-object v6, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ZERO:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    aput-object v6, v1, v2

    sget-object v2, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->NINETY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ONE_EIGHTY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->$VALUES:[Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 46
    iput p3, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->mValue:I

    return-void
.end method

.method public static fromValue(I)Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;
    .locals 1

    if-eqz p0, :cond_3

    const/16 v0, 0x5a

    if-eq p0, v0, :cond_2

    const/16 v0, 0xb4

    if-eq p0, v0, :cond_1

    const/16 v0, 0x10e

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 62
    :cond_0
    sget-object p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->TWO_SEVENTY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    return-object p0

    .line 60
    :cond_1
    sget-object p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ONE_EIGHTY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    return-object p0

    .line 58
    :cond_2
    sget-object p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->NINETY:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    return-object p0

    .line 56
    :cond_3
    sget-object p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->ZERO:Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;
    .locals 1

    .line 41
    const-class v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;
    .locals 1

    .line 41
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->$VALUES:[Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    invoke-virtual {v0}, [Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;

    return-object v0
.end method


# virtual methods
.method public value()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/zui/gallery/filtershow/filters/FilterRotateRepresentation$Rotation;->mValue:I

    return v0
.end method

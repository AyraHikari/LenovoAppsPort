.class public final enum Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;
.super Ljava/lang/Enum;
.source "FilterMirrorRepresentation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mirror"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

.field public static final enum BOTH:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

.field public static final enum HORIZONTAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

.field public static final enum NONE:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

.field public static final enum VERTICAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;


# instance fields
.field mValue:C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 43
    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    const-string v1, "NONE"

    const/4 v2, 0x0

    const/16 v3, 0x4e

    invoke-direct {v0, v1, v2, v3}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->NONE:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    const-string v1, "VERTICAL"

    const/4 v3, 0x1

    const/16 v4, 0x56

    invoke-direct {v0, v1, v3, v4}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->VERTICAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    const-string v1, "HORIZONTAL"

    const/4 v4, 0x2

    const/16 v5, 0x48

    invoke-direct {v0, v1, v4, v5}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->HORIZONTAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    new-instance v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    const-string v1, "BOTH"

    const/4 v5, 0x3

    const/16 v6, 0x42

    invoke-direct {v0, v1, v5, v6}, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->BOTH:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    const/4 v1, 0x4

    new-array v1, v1, [Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    .line 42
    sget-object v6, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->NONE:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    aput-object v6, v1, v2

    sget-object v2, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->VERTICAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    aput-object v2, v1, v3

    sget-object v2, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->HORIZONTAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    aput-object v2, v1, v4

    aput-object v0, v1, v5

    sput-object v1, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->$VALUES:[Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 47
    iput-char p3, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->mValue:C

    return-void
.end method

.method public static fromValue(C)Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;
    .locals 1

    const/16 v0, 0x42

    if-eq p0, v0, :cond_3

    const/16 v0, 0x48

    if-eq p0, v0, :cond_2

    const/16 v0, 0x4e

    if-eq p0, v0, :cond_1

    const/16 v0, 0x56

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 59
    :cond_0
    sget-object p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->VERTICAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    return-object p0

    .line 57
    :cond_1
    sget-object p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->NONE:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    return-object p0

    .line 61
    :cond_2
    sget-object p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->HORIZONTAL:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    return-object p0

    .line 63
    :cond_3
    sget-object p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->BOTH:Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;
    .locals 1

    .line 42
    const-class v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    return-object p0
.end method

.method public static values()[Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;
    .locals 1

    .line 42
    sget-object v0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->$VALUES:[Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    invoke-virtual {v0}, [Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;

    return-object v0
.end method


# virtual methods
.method public value()C
    .locals 1

    .line 51
    iget-char v0, p0, Lcom/zui/gallery/filtershow/filters/FilterMirrorRepresentation$Mirror;->mValue:C

    return v0
.end method

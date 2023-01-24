.class public final enum Lcom/tencent/mm/sdk/diffdev/a/g;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/mm/sdk/diffdev/a/g;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum aA:Lcom/tencent/mm/sdk/diffdev/a/g;

.field public static final enum aB:Lcom/tencent/mm/sdk/diffdev/a/g;

.field public static final enum aC:Lcom/tencent/mm/sdk/diffdev/a/g;

.field public static final enum aD:Lcom/tencent/mm/sdk/diffdev/a/g;

.field public static final enum aE:Lcom/tencent/mm/sdk/diffdev/a/g;

.field private static final synthetic aF:[Lcom/tencent/mm/sdk/diffdev/a/g;

.field public static final enum az:Lcom/tencent/mm/sdk/diffdev/a/g;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/tencent/mm/sdk/diffdev/a/g;

    const-string v1, "UUID_EXPIRED"

    const/4 v2, 0x0

    const/16 v3, 0x192

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/mm/sdk/diffdev/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mm/sdk/diffdev/a/g;->az:Lcom/tencent/mm/sdk/diffdev/a/g;

    new-instance v0, Lcom/tencent/mm/sdk/diffdev/a/g;

    const-string v1, "UUID_CANCELED"

    const/4 v3, 0x1

    const/16 v4, 0x193

    invoke-direct {v0, v1, v3, v4}, Lcom/tencent/mm/sdk/diffdev/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mm/sdk/diffdev/a/g;->aA:Lcom/tencent/mm/sdk/diffdev/a/g;

    new-instance v0, Lcom/tencent/mm/sdk/diffdev/a/g;

    const-string v1, "UUID_SCANED"

    const/4 v4, 0x2

    const/16 v5, 0x194

    invoke-direct {v0, v1, v4, v5}, Lcom/tencent/mm/sdk/diffdev/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mm/sdk/diffdev/a/g;->aB:Lcom/tencent/mm/sdk/diffdev/a/g;

    new-instance v0, Lcom/tencent/mm/sdk/diffdev/a/g;

    const-string v1, "UUID_CONFIRM"

    const/4 v5, 0x3

    const/16 v6, 0x195

    invoke-direct {v0, v1, v5, v6}, Lcom/tencent/mm/sdk/diffdev/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mm/sdk/diffdev/a/g;->aC:Lcom/tencent/mm/sdk/diffdev/a/g;

    new-instance v0, Lcom/tencent/mm/sdk/diffdev/a/g;

    const-string v1, "UUID_KEEP_CONNECT"

    const/4 v6, 0x4

    const/16 v7, 0x198

    invoke-direct {v0, v1, v6, v7}, Lcom/tencent/mm/sdk/diffdev/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mm/sdk/diffdev/a/g;->aD:Lcom/tencent/mm/sdk/diffdev/a/g;

    new-instance v0, Lcom/tencent/mm/sdk/diffdev/a/g;

    const-string v1, "UUID_ERROR"

    const/4 v7, 0x5

    const/16 v8, 0x1f4

    invoke-direct {v0, v1, v7, v8}, Lcom/tencent/mm/sdk/diffdev/a/g;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/mm/sdk/diffdev/a/g;->aE:Lcom/tencent/mm/sdk/diffdev/a/g;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/tencent/mm/sdk/diffdev/a/g;

    sget-object v8, Lcom/tencent/mm/sdk/diffdev/a/g;->az:Lcom/tencent/mm/sdk/diffdev/a/g;

    aput-object v8, v1, v2

    sget-object v2, Lcom/tencent/mm/sdk/diffdev/a/g;->aA:Lcom/tencent/mm/sdk/diffdev/a/g;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tencent/mm/sdk/diffdev/a/g;->aB:Lcom/tencent/mm/sdk/diffdev/a/g;

    aput-object v2, v1, v4

    sget-object v2, Lcom/tencent/mm/sdk/diffdev/a/g;->aC:Lcom/tencent/mm/sdk/diffdev/a/g;

    aput-object v2, v1, v5

    sget-object v2, Lcom/tencent/mm/sdk/diffdev/a/g;->aD:Lcom/tencent/mm/sdk/diffdev/a/g;

    aput-object v2, v1, v6

    aput-object v0, v1, v7

    sput-object v1, Lcom/tencent/mm/sdk/diffdev/a/g;->aF:[Lcom/tencent/mm/sdk/diffdev/a/g;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/tencent/mm/sdk/diffdev/a/g;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/mm/sdk/diffdev/a/g;
    .locals 1

    const-class v0, Lcom/tencent/mm/sdk/diffdev/a/g;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/mm/sdk/diffdev/a/g;

    return-object p0
.end method

.method public static values()[Lcom/tencent/mm/sdk/diffdev/a/g;
    .locals 1

    sget-object v0, Lcom/tencent/mm/sdk/diffdev/a/g;->aF:[Lcom/tencent/mm/sdk/diffdev/a/g;

    invoke-virtual {v0}, [Lcom/tencent/mm/sdk/diffdev/a/g;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/mm/sdk/diffdev/a/g;

    return-object v0
.end method


# virtual methods
.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/tencent/mm/sdk/diffdev/a/g;->code:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UUIDStatusCode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/tencent/mm/sdk/diffdev/a/g;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

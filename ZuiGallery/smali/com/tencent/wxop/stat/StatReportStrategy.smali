.class public final enum Lcom/tencent/wxop/stat/StatReportStrategy;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/tencent/wxop/stat/StatReportStrategy;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum APP_LAUNCH:Lcom/tencent/wxop/stat/StatReportStrategy;

.field public static final enum BATCH:Lcom/tencent/wxop/stat/StatReportStrategy;

.field public static final enum DEVELOPER:Lcom/tencent/wxop/stat/StatReportStrategy;

.field public static final enum INSTANT:Lcom/tencent/wxop/stat/StatReportStrategy;

.field public static final enum ONLY_WIFI:Lcom/tencent/wxop/stat/StatReportStrategy;

.field public static final enum ONLY_WIFI_NO_CACHE:Lcom/tencent/wxop/stat/StatReportStrategy;

.field public static final enum PERIOD:Lcom/tencent/wxop/stat/StatReportStrategy;

.field private static final synthetic b:[Lcom/tencent/wxop/stat/StatReportStrategy;


# instance fields
.field a:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    new-instance v0, Lcom/tencent/wxop/stat/StatReportStrategy;

    const-string v1, "INSTANT"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/tencent/wxop/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wxop/stat/StatReportStrategy;->INSTANT:Lcom/tencent/wxop/stat/StatReportStrategy;

    new-instance v0, Lcom/tencent/wxop/stat/StatReportStrategy;

    const-string v1, "ONLY_WIFI"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/tencent/wxop/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wxop/stat/StatReportStrategy;->ONLY_WIFI:Lcom/tencent/wxop/stat/StatReportStrategy;

    new-instance v0, Lcom/tencent/wxop/stat/StatReportStrategy;

    const-string v1, "BATCH"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/tencent/wxop/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wxop/stat/StatReportStrategy;->BATCH:Lcom/tencent/wxop/stat/StatReportStrategy;

    new-instance v0, Lcom/tencent/wxop/stat/StatReportStrategy;

    const-string v1, "APP_LAUNCH"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/tencent/wxop/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wxop/stat/StatReportStrategy;->APP_LAUNCH:Lcom/tencent/wxop/stat/StatReportStrategy;

    new-instance v0, Lcom/tencent/wxop/stat/StatReportStrategy;

    const-string v1, "DEVELOPER"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/tencent/wxop/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wxop/stat/StatReportStrategy;->DEVELOPER:Lcom/tencent/wxop/stat/StatReportStrategy;

    new-instance v0, Lcom/tencent/wxop/stat/StatReportStrategy;

    const-string v1, "PERIOD"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/tencent/wxop/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wxop/stat/StatReportStrategy;->PERIOD:Lcom/tencent/wxop/stat/StatReportStrategy;

    new-instance v0, Lcom/tencent/wxop/stat/StatReportStrategy;

    const-string v1, "ONLY_WIFI_NO_CACHE"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v8, v9}, Lcom/tencent/wxop/stat/StatReportStrategy;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/tencent/wxop/stat/StatReportStrategy;->ONLY_WIFI_NO_CACHE:Lcom/tencent/wxop/stat/StatReportStrategy;

    new-array v1, v9, [Lcom/tencent/wxop/stat/StatReportStrategy;

    sget-object v9, Lcom/tencent/wxop/stat/StatReportStrategy;->INSTANT:Lcom/tencent/wxop/stat/StatReportStrategy;

    aput-object v9, v1, v2

    sget-object v2, Lcom/tencent/wxop/stat/StatReportStrategy;->ONLY_WIFI:Lcom/tencent/wxop/stat/StatReportStrategy;

    aput-object v2, v1, v3

    sget-object v2, Lcom/tencent/wxop/stat/StatReportStrategy;->BATCH:Lcom/tencent/wxop/stat/StatReportStrategy;

    aput-object v2, v1, v4

    sget-object v2, Lcom/tencent/wxop/stat/StatReportStrategy;->APP_LAUNCH:Lcom/tencent/wxop/stat/StatReportStrategy;

    aput-object v2, v1, v5

    sget-object v2, Lcom/tencent/wxop/stat/StatReportStrategy;->DEVELOPER:Lcom/tencent/wxop/stat/StatReportStrategy;

    aput-object v2, v1, v6

    sget-object v2, Lcom/tencent/wxop/stat/StatReportStrategy;->PERIOD:Lcom/tencent/wxop/stat/StatReportStrategy;

    aput-object v2, v1, v7

    aput-object v0, v1, v8

    sput-object v1, Lcom/tencent/wxop/stat/StatReportStrategy;->b:[Lcom/tencent/wxop/stat/StatReportStrategy;

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

    iput p3, p0, Lcom/tencent/wxop/stat/StatReportStrategy;->a:I

    return-void
.end method

.method public static getStatReportStrategy(I)Lcom/tencent/wxop/stat/StatReportStrategy;
    .locals 5

    invoke-static {}, Lcom/tencent/wxop/stat/StatReportStrategy;->values()[Lcom/tencent/wxop/stat/StatReportStrategy;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/tencent/wxop/stat/StatReportStrategy;->a()I

    move-result v4

    if-ne p0, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/tencent/wxop/stat/StatReportStrategy;
    .locals 1

    const-class v0, Lcom/tencent/wxop/stat/StatReportStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/tencent/wxop/stat/StatReportStrategy;

    return-object p0
.end method

.method public static values()[Lcom/tencent/wxop/stat/StatReportStrategy;
    .locals 1

    sget-object v0, Lcom/tencent/wxop/stat/StatReportStrategy;->b:[Lcom/tencent/wxop/stat/StatReportStrategy;

    invoke-virtual {v0}, [Lcom/tencent/wxop/stat/StatReportStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/tencent/wxop/stat/StatReportStrategy;

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/tencent/wxop/stat/StatReportStrategy;->a:I

    return v0
.end method

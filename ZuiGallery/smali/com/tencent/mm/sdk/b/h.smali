.class public final Lcom/tencent/mm/sdk/b/h;
.super Ljava/lang/Object;


# static fields
.field private static final GMT:Ljava/util/TimeZone;

.field public static final bh:[J

.field private static final bi:[J

.field private static final bj:[C

.field private static final bk:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x4

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lcom/tencent/mm/sdk/b/h;->bh:[J

    new-array v0, v0, [J

    fill-array-data v0, :array_1

    sput-object v0, Lcom/tencent/mm/sdk/b/h;->bi:[J

    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/sdk/b/h;->GMT:Ljava/util/TimeZone;

    const/16 v0, 0x9

    new-array v0, v0, [C

    fill-array-data v0, :array_2

    sput-object v0, Lcom/tencent/mm/sdk/b/h;->bj:[C

    const-string v1, "&lt;"

    const-string v2, "&gt;"

    const-string v3, "&quot;"

    const-string v4, "&apos;"

    const-string v5, "&amp;"

    const-string v6, "&#x0D;"

    const-string v7, "&#x0A;"

    const-string v8, "&#x20;"

    const-string v9, "&#x09;"

    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/mm/sdk/b/h;->bk:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 8
        0x12c
        0xc8
        0x12c
        0xc8
    .end array-data

    :array_1
    .array-data 8
        0x12c
        0x32
        0x12c
        0x32
    .end array-data

    :array_2
    .array-data 2
        0x3cs
        0x3es
        0x22s
        0x27s
        0x26s
        0xds
        0xas
        0x20s
        0x9s
    .end array-data
.end method

.method public static h(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static u()Lcom/tencent/mm/sdk/b/f;
    .locals 1

    new-instance v0, Lcom/tencent/mm/sdk/b/f;

    invoke-direct {v0}, Lcom/tencent/mm/sdk/b/f;-><init>()V

    return-object v0
.end method

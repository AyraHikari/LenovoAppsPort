.class public final Lcom/google/vr/sdk/widgets/video/deps/eD;
.super Ljava/lang/Object;
.source "CeaUtil.java"


# static fields
.field private static final a:Ljava/lang/String; = "CeaUtil"

.field private static final b:I = 0x4

.field private static final c:I = 0xb5

.field private static final d:I = 0x31

.field private static final e:I = 0x47413934

.field private static final f:I = 0x3


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;)I
    .locals 3

    const/4 v0, 0x0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v1

    if-nez v1, :cond_1

    const/4 p0, -0x1

    return p0

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_0

    return v0
.end method

.method public static a(JLcom/google/vr/sdk/widgets/video/deps/gA;[Lcom/google/vr/sdk/widgets/video/deps/aA;)V
    .locals 12

    .line 1
    :goto_0
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 2
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/eD;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)I

    move-result v0

    .line 3
    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/eD;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_3

    .line 4
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v3

    if-le v2, v3, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    invoke-static {v0, v2, p2}, Lcom/google/vr/sdk/widgets/video/deps/eD;->a(IILcom/google/vr/sdk/widgets/video/deps/gA;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    .line 8
    invoke-virtual {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 9
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    and-int/lit8 v0, v0, 0x1f

    .line 10
    invoke-virtual {p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    mul-int/lit8 v0, v0, 0x3

    .line 12
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v1

    .line 13
    array-length v10, p3

    const/4 v3, 0x0

    move v11, v3

    :goto_1
    if-ge v11, v10, :cond_1

    aget-object v3, p3, v11

    .line 14
    invoke-virtual {p2, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 15
    invoke-interface {v3, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)V

    const/4 v6, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v4, p0

    move v7, v0

    .line 16
    invoke-interface/range {v3 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/aA;->a(JIIILcom/google/vr/sdk/widgets/video/deps/aA$a;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0xa

    sub-int/2addr v2, v0

    .line 18
    invoke-virtual {p2, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    goto :goto_0

    .line 20
    :cond_2
    invoke-virtual {p2, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    goto :goto_0

    :cond_3
    :goto_2
    const-string v0, "CeaUtil"

    const-string v1, "Skipping remainder of malformed SEI NAL unit."

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static a(IILcom/google/vr/sdk/widgets/video/deps/gA;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_1

    const/16 p0, 0x8

    if-ge p1, p0, :cond_0

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result p0

    .line 33
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result p1

    .line 34
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v1

    .line 35
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v2

    .line 36
    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v3

    .line 37
    invoke-virtual {p2, p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    const/16 p0, 0xb5

    if-ne p1, p0, :cond_1

    const/16 p0, 0x31

    if-ne v1, p0, :cond_1

    const p0, 0x47413934

    if-ne v2, p0, :cond_1

    const/4 p0, 0x3

    if-ne v3, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

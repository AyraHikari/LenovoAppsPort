.class public final Lcom/google/vr/sdk/widgets/video/deps/eU;
.super Lcom/google/vr/sdk/widgets/video/deps/en;
.source "Mp4WebvttDecoder.java"


# static fields
.field private static final a:I = 0x8

.field private static final b:I

.field private static final c:I

.field private static final d:I


# instance fields
.field private final e:Lcom/google/vr/sdk/widgets/video/deps/gA;

.field private final f:Lcom/google/vr/sdk/widgets/video/deps/eX$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "payl"

    .line 37
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/eU;->b:I

    const-string/jumbo v0, "sttg"

    .line 38
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/eU;->c:I

    const-string/jumbo v0, "vttc"

    .line 39
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/eU;->d:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "Mp4WebvttDecoder"

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/en;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eU;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    .line 3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/eX$a;

    invoke-direct {v0}, Lcom/google/vr/sdk/widgets/video/deps/eX$a;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eU;->f:Lcom/google/vr/sdk/widgets/video/deps/eX$a;

    return-void
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;Lcom/google/vr/sdk/widgets/video/deps/eX$a;I)Lcom/google/vr/sdk/widgets/video/deps/em;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    .line 17
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->a()V

    :cond_0
    :goto_0
    if-lez p2, :cond_3

    const/16 v0, 0x8

    if-lt p2, v0, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    .line 22
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v2

    add-int/lit8 p2, p2, -0x8

    sub-int/2addr v1, v0

    .line 25
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v4

    invoke-direct {v0, v3, v4, v1}, Ljava/lang/String;-><init>([BII)V

    .line 26
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    sub-int/2addr p2, v1

    .line 28
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/eU;->c:I

    if-ne v2, v1, :cond_1

    .line 29
    invoke-static {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eY;->a(Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/eX$a;)V

    goto :goto_0

    .line 30
    :cond_1
    sget v1, Lcom/google/vr/sdk/widgets/video/deps/eU;->b:I

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 32
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 33
    invoke-static {v1, v0, p1, v2}, Lcom/google/vr/sdk/widgets/video/deps/eY;->a(Ljava/lang/String;Ljava/lang/String;Lcom/google/vr/sdk/widgets/video/deps/eX$a;Ljava/util/List;)V

    goto :goto_0

    .line 20
    :cond_2
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/er;

    const-string p1, "Incomplete vtt cue box header found."

    invoke-direct {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/er;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_3
    invoke-virtual {p1}, Lcom/google/vr/sdk/widgets/video/deps/eX$a;->b()Lcom/google/vr/sdk/widgets/video/deps/eX;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected synthetic a([BIZ)Lcom/google/vr/sdk/widgets/video/deps/ep;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/vr/sdk/widgets/video/deps/eU;->b([BIZ)Lcom/google/vr/sdk/widgets/video/deps/eV;

    move-result-object p1

    return-object p1
.end method

.method protected b([BIZ)Lcom/google/vr/sdk/widgets/video/deps/eV;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/vr/sdk/widgets/video/deps/er;
        }
    .end annotation

    .line 5
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eU;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p3, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BI)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eU;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result p2

    if-lez p2, :cond_2

    .line 8
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eU;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result p2

    const/16 p3, 0x8

    if-lt p2, p3, :cond_1

    .line 10
    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eU;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p2

    .line 11
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eU;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-virtual {p3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result p3

    .line 12
    sget v0, Lcom/google/vr/sdk/widgets/video/deps/eU;->d:I

    if-ne p3, v0, :cond_0

    .line 13
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eU;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eU;->f:Lcom/google/vr/sdk/widgets/video/deps/eX$a;

    add-int/lit8 p2, p2, -0x8

    invoke-static {p3, v0, p2}, Lcom/google/vr/sdk/widgets/video/deps/eU;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;Lcom/google/vr/sdk/widgets/video/deps/eX$a;I)Lcom/google/vr/sdk/widgets/video/deps/em;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eU;->e:Lcom/google/vr/sdk/widgets/video/deps/gA;

    add-int/lit8 p2, p2, -0x8

    invoke-virtual {p3, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    goto :goto_0

    .line 9
    :cond_1
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/er;

    const-string p2, "Incomplete Mp4Webvtt Top Level box header found."

    invoke-direct {p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/er;-><init>(Ljava/lang/String;)V

    throw p1

    .line 16
    :cond_2
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/eV;

    invoke-direct {p2, p1}, Lcom/google/vr/sdk/widgets/video/deps/eV;-><init>(Ljava/util/List;)V

    return-object p2
.end method

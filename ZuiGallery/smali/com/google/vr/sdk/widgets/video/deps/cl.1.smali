.class public final Lcom/google/vr/sdk/widgets/video/deps/cl;
.super Ljava/lang/Object;
.source "Id3Decoder.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/bX;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/vr/sdk/widgets/video/deps/cl$b;,
        Lcom/google/vr/sdk/widgets/video/deps/cl$a;
    }
.end annotation


# static fields
.field public static final a:I

.field public static final b:I = 0xa

.field private static final c:Ljava/lang/String; = "Id3Decoder"

.field private static final d:I = 0x80

.field private static final e:I = 0x40

.field private static final f:I = 0x20

.field private static final g:I = 0x8

.field private static final h:I = 0x4

.field private static final i:I = 0x40

.field private static final j:I = 0x2

.field private static final k:I = 0x1

.field private static final l:I = 0x0

.field private static final m:I = 0x1

.field private static final n:I = 0x2

.field private static final o:I = 0x3


# instance fields
.field private final p:Lcom/google/vr/sdk/widgets/video/deps/cl$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ID3"

    .line 391
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/gM;->g(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/google/vr/sdk/widgets/video/deps/cl;->a:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cl;-><init>(Lcom/google/vr/sdk/widgets/video/deps/cl$a;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/sdk/widgets/video/deps/cl$a;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/cl;->p:Lcom/google/vr/sdk/widgets/video/deps/cl$a;

    return-void
.end method

.method private static a([BII)I
    .locals 1

    .line 372
    invoke-static {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b([BI)I

    move-result p1

    if-eqz p2, :cond_3

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 375
    :cond_0
    :goto_0
    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_2

    .line 376
    rem-int/lit8 p2, p1, 0x2

    if-nez p2, :cond_1

    add-int/lit8 p2, p1, 0x1

    aget-byte p2, p0, p2

    if-nez p2, :cond_1

    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 378
    invoke-static {p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b([BI)I

    move-result p1

    goto :goto_0

    .line 379
    :cond_2
    array-length p0, p0

    return p0

    :cond_3
    :goto_1
    return p1
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;II)Lcom/google/vr/sdk/widgets/video/deps/cf;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 268
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    .line 269
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    .line 270
    new-array v2, p1, [B

    const/4 v3, 0x0

    .line 271
    invoke-virtual {p0, v2, v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    const-string p0, "image/"

    const-string v4, "ISO-8859-1"

    const/4 v5, 0x2

    if-ne p2, v5, :cond_2

    .line 274
    new-instance p2, Ljava/lang/String;

    const/4 v6, 0x3

    invoke-direct {p2, v2, v3, v6, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {p2}, Lcom/google/vr/sdk/widgets/video/deps/gM;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p0, p2

    :goto_0
    const-string p2, "image/jpg"

    .line 275
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p0, "image/jpeg"

    :cond_1
    move p2, v5

    goto :goto_1

    .line 277
    :cond_2
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b([BI)I

    move-result p2

    .line 278
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v2, v3, p2, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    invoke-static {v6}, Lcom/google/vr/sdk/widgets/video/deps/gM;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x2f

    .line 279
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v6, -0x1

    if-ne v4, v6, :cond_4

    .line 280
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :cond_4
    move-object p0, v3

    :goto_1
    add-int/lit8 v3, p2, 0x1

    .line 281
    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    add-int/2addr p2, v5

    .line 283
    invoke-static {v2, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a([BII)I

    move-result v4

    .line 284
    new-instance v5, Ljava/lang/String;

    sub-int v6, v4, p2

    invoke-direct {v5, v2, p2, v6, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 285
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b(I)I

    move-result p2

    add-int/2addr v4, p2

    .line 286
    invoke-static {v2, v4, p1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b([BII)[B

    move-result-object p1

    .line 287
    new-instance p2, Lcom/google/vr/sdk/widgets/video/deps/cf;

    invoke-direct {p2, p0, v5, v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/cf;-><init>(Ljava/lang/String;Ljava/lang/String;I[B)V

    return-object p2
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;IIZILcom/google/vr/sdk/widgets/video/deps/cl$a;)Lcom/google/vr/sdk/widgets/video/deps/ch;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object v0, p0

    .line 306
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v1

    .line 307
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-static {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b([BI)I

    move-result v2

    .line 308
    new-instance v4, Ljava/lang/String;

    iget-object v3, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    sub-int v5, v2, v1

    const-string v6, "ISO-8859-1"

    invoke-direct {v4, v3, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    .line 309
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 310
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v5

    .line 311
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v6

    .line 312
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v2

    const-wide v7, 0xffffffffL

    cmp-long v9, v2, v7

    const-wide/16 v10, -0x1

    if-nez v9, :cond_0

    move-wide v12, v10

    goto :goto_0

    :cond_0
    move-wide v12, v2

    .line 315
    :goto_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v2

    cmp-long v7, v2, v7

    if-nez v7, :cond_1

    move-wide v9, v10

    goto :goto_1

    :cond_1
    move-wide v9, v2

    .line 318
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    add-int v1, v1, p1

    .line 320
    :cond_2
    :goto_2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v3

    if-ge v3, v1, :cond_3

    move/from16 v3, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v11, p5

    .line 321
    invoke-static {v3, p0, v7, v8, v11}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(ILcom/google/vr/sdk/widgets/video/deps/gA;ZILcom/google/vr/sdk/widgets/video/deps/cl$a;)Lcom/google/vr/sdk/widgets/video/deps/cm;

    move-result-object v14

    if-eqz v14, :cond_2

    .line 323
    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 325
    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v11, v0, [Lcom/google/vr/sdk/widgets/video/deps/cm;

    .line 326
    invoke-virtual {v2, v11}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 327
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ch;

    move-object v3, v0

    move-wide v7, v12

    invoke-direct/range {v3 .. v11}, Lcom/google/vr/sdk/widgets/video/deps/ch;-><init>(Ljava/lang/String;IIJJ[Lcom/google/vr/sdk/widgets/video/deps/cm;)V

    return-object v0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/cl$b;
    .locals 9

    .line 31
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Id3Decoder"

    const/16 v3, 0xa

    if-ge v0, v3, :cond_0

    const-string p0, "Data too short to be an ID3 tag"

    .line 32
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->m()I

    move-result v0

    .line 35
    sget v3, Lcom/google/vr/sdk/widgets/video/deps/cl;->a:I

    if-eq v0, v3, :cond_1

    const/16 p0, 0x3b

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Unexpected first three bytes of ID3 tag header: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 38
    :cond_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    const/4 v3, 0x1

    .line 39
    invoke-virtual {p0, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    .line 40
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v4

    .line 41
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->w()I

    move-result v5

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x0

    if-ne v0, v6, :cond_3

    and-int/lit8 p0, v4, 0x40

    if-eqz p0, :cond_2

    move p0, v3

    goto :goto_0

    :cond_2
    move p0, v8

    :goto_0
    if-eqz p0, :cond_9

    const-string p0, "Skipped ID3 tag with majorVersion=2 and undefined compression scheme"

    .line 45
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    const/4 v6, 0x3

    if-ne v0, v6, :cond_5

    and-int/lit8 v1, v4, 0x40

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_1

    :cond_4
    move v1, v8

    :goto_1
    if-eqz v1, :cond_9

    .line 50
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v1

    .line 51
    invoke-virtual {p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    add-int/2addr v1, v7

    sub-int/2addr v5, v1

    goto :goto_4

    :cond_5
    if-ne v0, v7, :cond_b

    and-int/lit8 v1, v4, 0x40

    if-eqz v1, :cond_6

    move v1, v3

    goto :goto_2

    :cond_6
    move v1, v8

    :goto_2
    if-eqz v1, :cond_7

    .line 56
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->w()I

    move-result v1

    add-int/lit8 v2, v1, -0x4

    .line 57
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    sub-int/2addr v5, v1

    :cond_7
    and-int/lit8 p0, v4, 0x10

    if-eqz p0, :cond_8

    move p0, v3

    goto :goto_3

    :cond_8
    move p0, v8

    :goto_3
    if-eqz p0, :cond_9

    add-int/lit8 v5, v5, -0xa

    :cond_9
    :goto_4
    if-ge v0, v7, :cond_a

    and-int/lit16 p0, v4, 0x80

    if-eqz p0, :cond_a

    goto :goto_5

    :cond_a
    move v3, v8

    .line 66
    :goto_5
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/cl$b;

    invoke-direct {p0, v0, v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/cl$b;-><init>(IZI)V

    return-object p0

    :cond_b
    const/16 p0, 0x39

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, p0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p0, "Skipped ID3 tag with unsupported majorVersion="

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static a(ILcom/google/vr/sdk/widgets/video/deps/gA;ZILcom/google/vr/sdk/widgets/video/deps/cl$a;)Lcom/google/vr/sdk/widgets/video/deps/cm;
    .locals 19

    move/from16 v0, p0

    move-object/from16 v7, p1

    .line 113
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v8

    .line 114
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v9

    .line 115
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v10

    const/4 v11, 0x3

    if-lt v0, v11, :cond_0

    .line 116
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v1

    move v13, v1

    goto :goto_0

    :cond_0
    const/4 v13, 0x0

    :goto_0
    const/4 v14, 0x4

    if-ne v0, v14, :cond_2

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v1

    if-nez p2, :cond_1

    and-int/lit16 v2, v1, 0xff

    shr-int/lit8 v3, v1, 0x8

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x7

    or-int/2addr v2, v3

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0xe

    or-int/2addr v2, v3

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x15

    or-int/2addr v1, v2

    :cond_1
    :goto_1
    move v15, v1

    goto :goto_2

    :cond_2
    if-ne v0, v11, :cond_3

    .line 122
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->x()I

    move-result v1

    goto :goto_1

    .line 123
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->m()I

    move-result v1

    goto :goto_1

    :goto_2
    if-lt v0, v11, :cond_4

    .line 124
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v1

    move v6, v1

    goto :goto_3

    :cond_4
    const/4 v6, 0x0

    :goto_3
    const/16 v16, 0x0

    if-nez v8, :cond_5

    if-nez v9, :cond_5

    if-nez v10, :cond_5

    if-nez v13, :cond_5

    if-nez v15, :cond_5

    if-nez v6, :cond_5

    .line 126
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return-object v16

    .line 128
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v1

    add-int v5, v1, v15

    .line 129
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v1

    const-string v4, "Id3Decoder"

    if-le v5, v1, :cond_6

    const-string v0, "Frame size exceeds remaining tag data"

    .line 130
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual/range {p1 .. p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return-object v16

    :cond_6
    if-eqz p4, :cond_7

    move-object/from16 v1, p4

    move/from16 v2, p0

    move v3, v8

    move-object v12, v4

    move v4, v9

    move v14, v5

    move v5, v10

    move/from16 v18, v6

    move v6, v13

    .line 134
    invoke-interface/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/cl$a;->a(IIIII)Z

    move-result v1

    if-nez v1, :cond_8

    .line 135
    invoke-virtual {v7, v14}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return-object v16

    :cond_7
    move-object v12, v4

    move v14, v5

    move/from16 v18, v6

    :cond_8
    const/4 v1, 0x1

    if-ne v0, v11, :cond_c

    move/from16 v2, v18

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_9

    move v3, v1

    goto :goto_4

    :cond_9
    const/4 v3, 0x0

    :goto_4
    and-int/lit8 v4, v2, 0x40

    if-eqz v4, :cond_a

    move v4, v1

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :goto_5
    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_b

    move v2, v1

    goto :goto_6

    :cond_b
    const/4 v2, 0x0

    :goto_6
    move/from16 v17, v3

    const/4 v6, 0x0

    goto :goto_c

    :cond_c
    move/from16 v2, v18

    const/4 v3, 0x4

    if-ne v0, v3, :cond_12

    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_d

    move v3, v1

    goto :goto_7

    :cond_d
    const/4 v3, 0x0

    :goto_7
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_e

    move v4, v1

    goto :goto_8

    :cond_e
    const/4 v4, 0x0

    :goto_8
    and-int/lit8 v5, v2, 0x4

    if-eqz v5, :cond_f

    move v5, v1

    goto :goto_9

    :cond_f
    const/4 v5, 0x0

    :goto_9
    and-int/lit8 v6, v2, 0x2

    if-eqz v6, :cond_10

    move v6, v1

    goto :goto_a

    :cond_10
    const/4 v6, 0x0

    :goto_a
    and-int/2addr v2, v1

    if-eqz v2, :cond_11

    move/from16 v17, v1

    goto :goto_b

    :cond_11
    const/16 v17, 0x0

    :goto_b
    move v2, v3

    move/from16 v3, v17

    move/from16 v17, v4

    move v4, v5

    goto :goto_c

    :cond_12
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    :goto_c
    if-nez v17, :cond_27

    if-eqz v4, :cond_13

    goto/16 :goto_10

    :cond_13
    if-eqz v2, :cond_14

    add-int/lit8 v15, v15, -0x1

    .line 159
    invoke-virtual {v7, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    :cond_14
    if-eqz v3, :cond_15

    add-int/lit8 v15, v15, -0x4

    const/4 v1, 0x4

    .line 162
    invoke-virtual {v7, v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V

    :cond_15
    if-eqz v6, :cond_16

    .line 164
    invoke-static {v7, v15}, Lcom/google/vr/sdk/widgets/video/deps/cl;->f(Lcom/google/vr/sdk/widgets/video/deps/gA;I)I

    move-result v15

    :cond_16
    const/16 v1, 0x54

    const/4 v2, 0x2

    const/16 v3, 0x58

    if-ne v8, v1, :cond_18

    if-ne v9, v3, :cond_18

    if-ne v10, v3, :cond_18

    if-eq v0, v2, :cond_17

    if-ne v13, v3, :cond_18

    .line 166
    :cond_17
    :try_start_0
    invoke-static {v7, v15}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/sdk/widgets/video/deps/co;

    move-result-object v1

    goto/16 :goto_e

    :cond_18
    if-ne v8, v1, :cond_19

    .line 168
    invoke-static {v0, v8, v9, v10, v13}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 169
    invoke-static {v7, v15, v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/co;

    move-result-object v1

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    goto/16 :goto_f

    :cond_19
    const/16 v4, 0x57

    if-ne v8, v4, :cond_1b

    if-ne v9, v3, :cond_1b

    if-ne v10, v3, :cond_1b

    if-eq v0, v2, :cond_1a

    if-ne v13, v3, :cond_1b

    .line 171
    :cond_1a
    invoke-static {v7, v15}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/sdk/widgets/video/deps/cp;

    move-result-object v1

    goto/16 :goto_e

    :cond_1b
    if-ne v8, v4, :cond_1c

    .line 173
    invoke-static {v0, v8, v9, v10, v13}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 174
    invoke-static {v7, v15, v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/cp;

    move-result-object v1

    goto/16 :goto_e

    :cond_1c
    const/16 v3, 0x49

    const/16 v4, 0x50

    if-ne v8, v4, :cond_1d

    const/16 v5, 0x52

    if-ne v9, v5, :cond_1d

    if-ne v10, v3, :cond_1d

    const/16 v5, 0x56

    if-ne v13, v5, :cond_1d

    .line 176
    invoke-static {v7, v15}, Lcom/google/vr/sdk/widgets/video/deps/cl;->c(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/sdk/widgets/video/deps/cn;

    move-result-object v1

    goto/16 :goto_e

    :cond_1d
    const/16 v5, 0x47

    const/16 v6, 0x4f

    if-ne v8, v5, :cond_1f

    const/16 v5, 0x45

    if-ne v9, v5, :cond_1f

    if-ne v10, v6, :cond_1f

    const/16 v5, 0x42

    if-eq v13, v5, :cond_1e

    if-ne v0, v2, :cond_1f

    .line 178
    :cond_1e
    invoke-static {v7, v15}, Lcom/google/vr/sdk/widgets/video/deps/cl;->d(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/sdk/widgets/video/deps/ck;

    move-result-object v1

    goto/16 :goto_e

    :cond_1f
    const/16 v5, 0x41

    const/16 v11, 0x43

    if-ne v0, v2, :cond_20

    if-ne v8, v4, :cond_21

    if-ne v9, v3, :cond_21

    if-ne v10, v11, :cond_21

    goto :goto_d

    :cond_20
    if-ne v8, v5, :cond_21

    if-ne v9, v4, :cond_21

    if-ne v10, v3, :cond_21

    if-ne v13, v11, :cond_21

    .line 180
    :goto_d
    invoke-static {v7, v15, v0}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;II)Lcom/google/vr/sdk/widgets/video/deps/cf;

    move-result-object v1

    goto :goto_e

    :cond_21
    if-ne v8, v11, :cond_23

    if-ne v9, v6, :cond_23

    const/16 v3, 0x4d

    if-ne v10, v3, :cond_23

    if-eq v13, v3, :cond_22

    if-ne v0, v2, :cond_23

    .line 182
    :cond_22
    invoke-static {v7, v15}, Lcom/google/vr/sdk/widgets/video/deps/cl;->e(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/sdk/widgets/video/deps/cj;

    move-result-object v1

    goto :goto_e

    :cond_23
    if-ne v8, v11, :cond_24

    const/16 v2, 0x48

    if-ne v9, v2, :cond_24

    if-ne v10, v5, :cond_24

    if-ne v13, v4, :cond_24

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 184
    invoke-static/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;IIZILcom/google/vr/sdk/widgets/video/deps/cl$a;)Lcom/google/vr/sdk/widgets/video/deps/ch;

    move-result-object v1

    goto :goto_e

    :cond_24
    if-ne v8, v11, :cond_25

    if-ne v9, v1, :cond_25

    if-ne v10, v6, :cond_25

    if-ne v13, v11, :cond_25

    move-object/from16 v1, p1

    move v2, v15

    move/from16 v3, p0

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    .line 186
    invoke-static/range {v1 .. v6}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b(Lcom/google/vr/sdk/widgets/video/deps/gA;IIZILcom/google/vr/sdk/widgets/video/deps/cl$a;)Lcom/google/vr/sdk/widgets/video/deps/ci;

    move-result-object v1

    goto :goto_e

    .line 187
    :cond_25
    invoke-static {v0, v8, v9, v10, v13}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(IIIII)Ljava/lang/String;

    move-result-object v1

    .line 188
    invoke-static {v7, v15, v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->c(Lcom/google/vr/sdk/widgets/video/deps/gA;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/cg;

    move-result-object v1

    :goto_e
    if-nez v1, :cond_26

    .line 191
    invoke-static {v0, v8, v9, v10, v13}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(IIIII)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x32

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v2, "Failed to decode frame: id="

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", frameSize="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 192
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_26
    invoke-virtual {v7, v14}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return-object v1

    :catch_0
    :try_start_1
    const-string v0, "Unsupported character encoding"

    .line 197
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    invoke-virtual {v7, v14}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return-object v16

    .line 201
    :goto_f
    invoke-virtual {v7, v14}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    throw v0

    :cond_27
    :goto_10
    const-string v0, "Skipping unsupported compressed or encrypted frame"

    .line 154
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-virtual {v7, v14}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return-object v16
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/sdk/widgets/video/deps/co;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 204
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v1

    .line 205
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(I)Ljava/lang/String;

    move-result-object v2

    sub-int/2addr p1, v0

    .line 206
    new-array v0, p1, [B

    const/4 v3, 0x0

    .line 207
    invoke-virtual {p0, v0, v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 208
    invoke-static {v0, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a([BII)I

    move-result p0

    .line 209
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v3, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 210
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b(I)I

    move-result v3

    add-int/2addr p0, v3

    if-ge p0, p1, :cond_1

    .line 212
    invoke-static {v0, p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a([BII)I

    move-result p1

    .line 213
    new-instance v1, Ljava/lang/String;

    sub-int/2addr p1, p0

    invoke-direct {v1, v0, p0, p1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 216
    :goto_0
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/co;

    const-string p1, "TXXX"

    invoke-direct {p0, p1, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/co;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/co;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ge p1, v1, :cond_0

    return-object v0

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v2

    .line 220
    invoke-static {v2}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(I)Ljava/lang/String;

    move-result-object v3

    sub-int/2addr p1, v1

    .line 221
    new-array v1, p1, [B

    const/4 v4, 0x0

    .line 222
    invoke-virtual {p0, v1, v4, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 223
    invoke-static {v1, v4, v2}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a([BII)I

    move-result p0

    .line 224
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1, v4, p0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 225
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/co;

    invoke-direct {p0, p2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/co;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "ISO-8859-1"

    return-object p0

    :cond_0
    const-string p0, "UTF-8"

    return-object p0

    :cond_1
    const-string p0, "UTF-16BE"

    return-object p0

    :cond_2
    const-string p0, "UTF-16"

    return-object p0
.end method

.method private static a(IIIII)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne p0, v3, :cond_0

    .line 369
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array p4, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p4, v3

    const-string p1, "%c%c%c"

    invoke-static {p0, p1, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 370
    :cond_0
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v3

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v4, v0

    const-string p1, "%c%c%c%c"

    invoke-static {p0, p1, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private static a(Lcom/google/vr/sdk/widgets/video/deps/gA;IIZ)Z
    .locals 18

    move-object/from16 v1, p0

    move/from16 v0, p1

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v2

    .line 68
    :goto_0
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v3

    const/4 v4, 0x1

    move/from16 v5, p2

    if-lt v3, v5, :cond_d

    const/4 v3, 0x3

    const/4 v6, 0x0

    if-lt v0, v3, :cond_0

    .line 70
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->r()I

    move-result v7

    .line 71
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->p()J

    move-result-wide v8

    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->i()I

    move-result v10

    goto :goto_1

    .line 73
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->m()I

    move-result v7

    .line 74
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->m()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    int-to-long v8, v8

    move v10, v6

    :goto_1
    const-wide/16 v11, 0x0

    if-nez v7, :cond_1

    cmp-long v7, v8, v11

    if-nez v7, :cond_1

    if-nez v10, :cond_1

    .line 78
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return v4

    :cond_1
    const/4 v7, 0x4

    if-ne v0, v7, :cond_3

    if-nez p3, :cond_3

    const-wide/32 v13, 0x808080

    and-long/2addr v13, v8

    cmp-long v11, v13, v11

    if-eqz v11, :cond_2

    .line 83
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return v6

    :cond_2
    const-wide/16 v11, 0xff

    and-long v13, v8, v11

    const/16 v15, 0x8

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0x7

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x10

    shr-long v15, v8, v15

    and-long/2addr v15, v11

    const/16 v17, 0xe

    shl-long v15, v15, v17

    or-long/2addr v13, v15

    const/16 v15, 0x18

    shr-long/2addr v8, v15

    and-long/2addr v8, v11

    const/16 v11, 0x15

    shl-long/2addr v8, v11

    or-long/2addr v8, v13

    :cond_3
    if-ne v0, v7, :cond_6

    and-int/lit8 v3, v10, 0x40

    if-eqz v3, :cond_4

    move v3, v4

    goto :goto_2

    :cond_4
    move v3, v6

    :goto_2
    and-int/lit8 v7, v10, 0x1

    if-eqz v7, :cond_5

    :goto_3
    move v7, v4

    goto :goto_5

    :cond_5
    move v7, v6

    goto :goto_5

    :cond_6
    if-ne v0, v3, :cond_8

    and-int/lit8 v3, v10, 0x20

    if-eqz v3, :cond_7

    move v3, v4

    goto :goto_4

    :cond_7
    move v3, v6

    :goto_4
    and-int/lit16 v7, v10, 0x80

    if-eqz v7, :cond_5

    goto :goto_3

    :cond_8
    move v3, v6

    move v7, v3

    :goto_5
    if-eqz v3, :cond_9

    goto :goto_6

    :cond_9
    move v4, v6

    :goto_6
    if-eqz v7, :cond_a

    add-int/lit8 v4, v4, 0x4

    :cond_a
    int-to-long v3, v4

    cmp-long v3, v8, v3

    if-gez v3, :cond_b

    .line 101
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return v6

    .line 103
    :cond_b
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    int-to-long v3, v3

    cmp-long v3, v3, v8

    if-gez v3, :cond_c

    .line 105
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return v6

    :cond_c
    long-to-int v3, v8

    .line 107
    :try_start_2
    invoke-virtual {v1, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 110
    :cond_d
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    return v4

    :catchall_0
    move-exception v0

    .line 112
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    throw v0
.end method

.method private static b(I)I
    .locals 1

    if-eqz p0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static b([BI)I
    .locals 1

    .line 380
    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    .line 381
    aget-byte v0, p0, p1

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 384
    :cond_1
    array-length p0, p0

    return p0
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/gA;IIZILcom/google/vr/sdk/widgets/video/deps/cl$a;)Lcom/google/vr/sdk/widgets/video/deps/ci;
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    move-object v0, p0

    .line 328
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v1

    .line 329
    iget-object v2, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-static {v2, v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b([BI)I

    move-result v2

    .line 330
    new-instance v3, Ljava/lang/String;

    iget-object v4, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    sub-int v5, v2, v1

    const-string v6, "ISO-8859-1"

    invoke-direct {v3, v4, v1, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    const/4 v4, 0x1

    add-int/2addr v2, v4

    .line 331
    invoke-virtual {p0, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    .line 332
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v2

    and-int/lit8 v5, v2, 0x2

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v7

    :goto_0
    and-int/2addr v2, v4

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    move v2, v7

    .line 335
    :goto_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v8

    .line 336
    new-array v9, v8, [Ljava/lang/String;

    :goto_2
    if-ge v7, v8, :cond_2

    .line 338
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v10

    .line 339
    iget-object v11, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    invoke-static {v11, v10}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b([BI)I

    move-result v11

    .line 340
    new-instance v12, Ljava/lang/String;

    iget-object v13, v0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    sub-int v14, v11, v10

    invoke-direct {v12, v13, v10, v14, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    aput-object v12, v9, v7

    add-int/2addr v11, v4

    .line 341
    invoke-virtual {p0, v11}, Lcom/google/vr/sdk/widgets/video/deps/gA;->c(I)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 343
    :cond_2
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    add-int v1, v1, p1

    .line 345
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v6

    if-ge v6, v1, :cond_4

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v10, p5

    .line 346
    invoke-static {v6, p0, v7, v8, v10}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(ILcom/google/vr/sdk/widgets/video/deps/gA;ZILcom/google/vr/sdk/widgets/video/deps/cl$a;)Lcom/google/vr/sdk/widgets/video/deps/cm;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 348
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 350
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/google/vr/sdk/widgets/video/deps/cm;

    .line 351
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 352
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/ci;

    move-object p0, v1

    move-object/from16 p1, v3

    move/from16 p2, v5

    move/from16 p3, v2

    move-object/from16 p4, v9

    move-object/from16 p5, v0

    invoke-direct/range {p0 .. p5}, Lcom/google/vr/sdk/widgets/video/deps/ci;-><init>(Ljava/lang/String;ZZ[Ljava/lang/String;[Lcom/google/vr/sdk/widgets/video/deps/cm;)V

    return-object v1
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/sdk/widgets/video/deps/cp;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 228
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v1

    .line 229
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(I)Ljava/lang/String;

    move-result-object v2

    sub-int/2addr p1, v0

    .line 230
    new-array v0, p1, [B

    const/4 v3, 0x0

    .line 231
    invoke-virtual {p0, v0, v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 232
    invoke-static {v0, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a([BII)I

    move-result p0

    .line 233
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0, v3, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 234
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b(I)I

    move-result v1

    add-int/2addr p0, v1

    if-ge p0, p1, :cond_1

    .line 236
    invoke-static {v0, p0}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b([BI)I

    move-result p1

    .line 237
    new-instance v1, Ljava/lang/String;

    sub-int/2addr p1, p0

    const-string v2, "ISO-8859-1"

    invoke-direct {v1, v0, p0, p1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 240
    :goto_0
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/cp;

    const-string p1, "WXXX"

    invoke-direct {p0, p1, v4, v1}, Lcom/google/vr/sdk/widgets/video/deps/cp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static b(Lcom/google/vr/sdk/widgets/video/deps/gA;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/cp;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 241
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 242
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 243
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b([BI)I

    move-result p0

    .line 244
    new-instance p1, Ljava/lang/String;

    const-string v2, "ISO-8859-1"

    invoke-direct {p1, v0, v1, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 245
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/cp;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cp;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static b([BII)[B
    .locals 0

    if-gt p2, p1, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 390
    :cond_0
    invoke-static {p0, p1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/google/vr/sdk/widgets/video/deps/gA;ILjava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/cg;
    .locals 2

    .line 353
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 354
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 355
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/cg;

    invoke-direct {p0, p2, v0}, Lcom/google/vr/sdk/widgets/video/deps/cg;-><init>(Ljava/lang/String;[B)V

    return-object p0
.end method

.method private static c(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/sdk/widgets/video/deps/cn;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 246
    new-array v0, p1, [B

    const/4 v1, 0x0

    .line 247
    invoke-virtual {p0, v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 248
    invoke-static {v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b([BI)I

    move-result p0

    .line 249
    new-instance v2, Ljava/lang/String;

    const-string v3, "ISO-8859-1"

    invoke-direct {v2, v0, v1, p0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    .line 251
    invoke-static {v0, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b([BII)[B

    move-result-object p0

    .line 252
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/cn;

    invoke-direct {p1, v2, p0}, Lcom/google/vr/sdk/widgets/video/deps/cn;-><init>(Ljava/lang/String;[B)V

    return-object p1
.end method

.method private static d(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/sdk/widgets/video/deps/ck;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 253
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v0

    .line 254
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(I)Ljava/lang/String;

    move-result-object v1

    add-int/lit8 p1, p1, -0x1

    .line 255
    new-array v2, p1, [B

    const/4 v3, 0x0

    .line 256
    invoke-virtual {p0, v2, v3, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 257
    invoke-static {v2, v3}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b([BI)I

    move-result p0

    .line 258
    new-instance v4, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-direct {v4, v2, v3, p0, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 p0, p0, 0x1

    .line 260
    invoke-static {v2, p0, v0}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a([BII)I

    move-result v3

    .line 261
    new-instance v5, Ljava/lang/String;

    sub-int v6, v3, p0

    invoke-direct {v5, v2, p0, v6, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 262
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b(I)I

    move-result p0

    add-int/2addr v3, p0

    .line 263
    invoke-static {v2, v3, v0}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a([BII)I

    move-result p0

    .line 264
    new-instance v6, Ljava/lang/String;

    sub-int v7, p0, v3

    invoke-direct {v6, v2, v3, v7, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 265
    invoke-static {v0}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b(I)I

    move-result v0

    add-int/2addr p0, v0

    .line 266
    invoke-static {v2, p0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b([BII)[B

    move-result-object p0

    .line 267
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/ck;

    invoke-direct {p1, v4, v5, v6, p0}, Lcom/google/vr/sdk/widgets/video/deps/ck;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    return-object p1
.end method

.method private static e(Lcom/google/vr/sdk/widgets/video/deps/gA;I)Lcom/google/vr/sdk/widgets/video/deps/cj;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->h()I

    move-result v1

    .line 291
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    new-array v4, v3, [B

    const/4 v5, 0x0

    .line 293
    invoke-virtual {p0, v4, v5, v3}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 294
    new-instance v6, Ljava/lang/String;

    invoke-direct {v6, v4, v5, v3}, Ljava/lang/String;-><init>([BII)V

    sub-int/2addr p1, v0

    .line 295
    new-array v0, p1, [B

    .line 296
    invoke-virtual {p0, v0, v5, p1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->a([BII)V

    .line 297
    invoke-static {v0, v5, v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a([BII)I

    move-result p0

    .line 298
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0, v5, p0, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 299
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->b(I)I

    move-result v4

    add-int/2addr p0, v4

    if-ge p0, p1, :cond_1

    .line 301
    invoke-static {v0, p0, v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a([BII)I

    move-result p1

    .line 302
    new-instance v1, Ljava/lang/String;

    sub-int/2addr p1, p0

    invoke-direct {v1, v0, p0, p1, v2}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, ""

    .line 305
    :goto_0
    new-instance p0, Lcom/google/vr/sdk/widgets/video/deps/cj;

    invoke-direct {p0, v6, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/cj;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static f(Lcom/google/vr/sdk/widgets/video/deps/gA;I)I
    .locals 4

    .line 356
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/gA;->a:[B

    .line 357
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result p0

    :goto_0
    add-int/lit8 v1, p0, 0x1

    if-ge v1, p1, :cond_1

    .line 358
    aget-byte v2, v0, p0

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_0

    aget-byte v2, v0, v1

    if-nez v2, :cond_0

    add-int/lit8 v2, p0, 0x2

    sub-int p0, p1, p0

    add-int/lit8 p0, p0, -0x2

    .line 359
    invoke-static {v0, v2, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p1, p1, -0x1

    :cond_0
    move p0, v1

    goto :goto_0

    :cond_1
    return p1
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/ca;)Lcom/google/vr/sdk/widgets/video/deps/bW;
    .locals 1

    .line 6
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/ca;->e:Ljava/nio/ByteBuffer;

    .line 7
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a([BI)Lcom/google/vr/sdk/widgets/video/deps/bW;

    move-result-object p1

    return-object p1
.end method

.method public a([BI)Lcom/google/vr/sdk/widgets/video/deps/bW;
    .locals 6

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v1, Lcom/google/vr/sdk/widgets/video/deps/gA;

    invoke-direct {v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/gA;-><init>([BI)V

    .line 10
    invoke-static {v1}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;)Lcom/google/vr/sdk/widgets/video/deps/cl$b;

    move-result-object p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 13
    :cond_0
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->d()I

    move-result v2

    .line 14
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/cl$b;->a(Lcom/google/vr/sdk/widgets/video/deps/cl$b;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    const/4 v3, 0x6

    goto :goto_0

    :cond_1
    const/16 v3, 0xa

    .line 15
    :goto_0
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/cl$b;->b(Lcom/google/vr/sdk/widgets/video/deps/cl$b;)I

    move-result v4

    .line 16
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/cl$b;->c(Lcom/google/vr/sdk/widgets/video/deps/cl$b;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 17
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/cl$b;->b(Lcom/google/vr/sdk/widgets/video/deps/cl$b;)I

    move-result v4

    invoke-static {v1, v4}, Lcom/google/vr/sdk/widgets/video/deps/cl;->f(Lcom/google/vr/sdk/widgets/video/deps/gA;I)I

    move-result v4

    :cond_2
    add-int/2addr v2, v4

    .line 18
    invoke-virtual {v1, v2}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b(I)V

    .line 20
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/cl$b;->a(Lcom/google/vr/sdk/widgets/video/deps/cl$b;)I

    move-result v2

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;IIZ)Z

    move-result v2

    const/4 v5, 0x1

    if-nez v2, :cond_4

    .line 21
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/cl$b;->a(Lcom/google/vr/sdk/widgets/video/deps/cl$b;)I

    move-result v2

    const/4 v4, 0x4

    if-ne v2, v4, :cond_3

    invoke-static {v1, v4, v3, v5}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(Lcom/google/vr/sdk/widgets/video/deps/gA;IIZ)Z

    move-result v2

    if-eqz v2, :cond_3

    move v4, v5

    goto :goto_1

    .line 23
    :cond_3
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/cl$b;->a(Lcom/google/vr/sdk/widgets/video/deps/cl$b;)I

    move-result p1

    const/16 v0, 0x38

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Failed to validate ID3 tag with majorVersion="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Id3Decoder"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object p2

    .line 25
    :cond_4
    :goto_1
    invoke-virtual {v1}, Lcom/google/vr/sdk/widgets/video/deps/gA;->b()I

    move-result p2

    if-lt p2, v3, :cond_5

    .line 26
    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/cl$b;->a(Lcom/google/vr/sdk/widgets/video/deps/cl$b;)I

    move-result p2

    iget-object v2, p0, Lcom/google/vr/sdk/widgets/video/deps/cl;->p:Lcom/google/vr/sdk/widgets/video/deps/cl$a;

    invoke-static {p2, v1, v4, v3, v2}, Lcom/google/vr/sdk/widgets/video/deps/cl;->a(ILcom/google/vr/sdk/widgets/video/deps/gA;ZILcom/google/vr/sdk/widgets/video/deps/cl$a;)Lcom/google/vr/sdk/widgets/video/deps/cm;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 28
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 30
    :cond_5
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/bW;

    invoke-direct {p1, v0}, Lcom/google/vr/sdk/widgets/video/deps/bW;-><init>(Ljava/util/List;)V

    return-object p1
.end method

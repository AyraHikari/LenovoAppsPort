.class final Lcom/google/vr/sdk/widgets/video/deps/eM;
.super Ljava/lang/Object;
.source "TtmlNode.java"


# static fields
.field public static final A:Ljava/lang/String; = "textDecoration"

.field public static final B:Ljava/lang/String; = "textAlign"

.field public static final C:Ljava/lang/String; = "linethrough"

.field public static final D:Ljava/lang/String; = "nolinethrough"

.field public static final E:Ljava/lang/String; = "underline"

.field public static final F:Ljava/lang/String; = "nounderline"

.field public static final G:Ljava/lang/String; = "italic"

.field public static final H:Ljava/lang/String; = "bold"

.field public static final I:Ljava/lang/String; = "left"

.field public static final J:Ljava/lang/String; = "center"

.field public static final K:Ljava/lang/String; = "right"

.field public static final L:Ljava/lang/String; = "start"

.field public static final M:Ljava/lang/String; = "end"

.field public static final a:Ljava/lang/String; = "tt"

.field public static final b:Ljava/lang/String; = "head"

.field public static final c:Ljava/lang/String; = "body"

.field public static final d:Ljava/lang/String; = "div"

.field public static final e:Ljava/lang/String; = "p"

.field public static final f:Ljava/lang/String; = "span"

.field public static final g:Ljava/lang/String; = "br"

.field public static final h:Ljava/lang/String; = "style"

.field public static final i:Ljava/lang/String; = "styling"

.field public static final j:Ljava/lang/String; = "layout"

.field public static final k:Ljava/lang/String; = "region"

.field public static final l:Ljava/lang/String; = "metadata"

.field public static final m:Ljava/lang/String; = "smpte:image"

.field public static final n:Ljava/lang/String; = "smpte:data"

.field public static final o:Ljava/lang/String; = "smpte:information"

.field public static final p:Ljava/lang/String; = ""

.field public static final q:Ljava/lang/String; = "id"

.field public static final r:Ljava/lang/String; = "origin"

.field public static final s:Ljava/lang/String; = "extent"

.field public static final t:Ljava/lang/String; = "displayAlign"

.field public static final u:Ljava/lang/String; = "backgroundColor"

.field public static final v:Ljava/lang/String; = "fontStyle"

.field public static final w:Ljava/lang/String; = "fontSize"

.field public static final x:Ljava/lang/String; = "fontFamily"

.field public static final y:Ljava/lang/String; = "fontWeight"

.field public static final z:Ljava/lang/String; = "color"


# instance fields
.field public final N:Ljava/lang/String;

.field public final O:Ljava/lang/String;

.field public final P:Z

.field public final Q:J

.field public final R:J

.field public final S:Lcom/google/vr/sdk/widgets/video/deps/eP;

.field public final T:Ljava/lang/String;

.field private final U:[Ljava/lang/String;

.field private final V:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final W:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/eM;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/vr/sdk/widgets/video/deps/eP;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->N:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->O:Ljava/lang/String;

    .line 6
    iput-object p7, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->S:Lcom/google/vr/sdk/widgets/video/deps/eP;

    .line 7
    iput-object p8, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->U:[Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 8
    :goto_0
    iput-boolean p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->P:Z

    .line 9
    iput-wide p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->Q:J

    .line 10
    iput-wide p5, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->R:J

    .line 11
    invoke-static {p9}, Lcom/google/vr/sdk/widgets/video/deps/gl;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->T:Ljava/lang/String;

    .line 12
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->V:Ljava/util/HashMap;

    .line 13
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->W:Ljava/util/HashMap;

    return-void
.end method

.method private a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;
    .locals 7

    .line 95
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v0, :cond_2

    .line 97
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v3, :cond_1

    add-int/lit8 v4, v2, 0x1

    move v5, v4

    .line 99
    :goto_1
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    if-ge v5, v6, :cond_0

    invoke-virtual {p1, v5}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v6

    if-ne v6, v3, :cond_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    sub-int/2addr v5, v4

    if-lez v5, :cond_1

    add-int v3, v2, v5

    .line 103
    invoke-virtual {p1, v2, v3}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    sub-int/2addr v0, v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    .line 106
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_3

    const/4 v2, 0x1

    .line 107
    invoke-virtual {p1, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    :cond_3
    move v2, v1

    :goto_2
    add-int/lit8 v4, v0, -0x1

    const/16 v5, 0xa

    if-ge v2, v4, :cond_5

    .line 110
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_4

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_4

    add-int/lit8 v5, v2, 0x2

    .line 111
    invoke-virtual {p1, v4, v5}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    if-lez v0, :cond_6

    .line 114
    invoke-virtual {p1, v4}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_6

    .line 115
    invoke-virtual {p1, v4, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    :cond_6
    :goto_3
    add-int/lit8 v2, v0, -0x1

    if-ge v1, v2, :cond_8

    .line 118
    invoke-virtual {p1, v1}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_7

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v4

    if-ne v4, v5, :cond_7

    .line 119
    invoke-virtual {p1, v1, v2}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v0, v0, -0x1

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    if-lez v0, :cond_9

    .line 122
    invoke-virtual {p1, v2}, Landroid/text/SpannableStringBuilder;->charAt(I)C

    move-result v1

    if-ne v1, v5, :cond_9

    .line 123
    invoke-virtual {p1, v2, v0}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    :cond_9
    return-object p1
.end method

.method private static a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)",
            "Landroid/text/SpannableStringBuilder;"
        }
    .end annotation

    .line 78
    invoke-interface {p1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    invoke-interface {p1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/text/SpannableStringBuilder;

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eM;
    .locals 11

    .line 1
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/eM;

    invoke-static {p0}, Lcom/google/vr/sdk/widgets/video/deps/eO;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-string v9, ""

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/eM;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/vr/sdk/widgets/video/deps/eP;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method public static a(Ljava/lang/String;JJLcom/google/vr/sdk/widgets/video/deps/eP;[Ljava/lang/String;Ljava/lang/String;)Lcom/google/vr/sdk/widgets/video/deps/eM;
    .locals 11

    .line 2
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/eM;

    const/4 v2, 0x0

    move-object v0, v10

    move-object v1, p0

    move-wide v3, p1

    move-wide v5, p3

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/eM;-><init>(Ljava/lang/String;Ljava/lang/String;JJLcom/google/vr/sdk/widgets/video/deps/eP;[Ljava/lang/String;Ljava/lang/String;)V

    return-object v10
.end method

.method private a(JZLjava/lang/String;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)V"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->V:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 55
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->W:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 56
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->T:Ljava/lang/String;

    const-string v1, ""

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p4, v0

    .line 59
    :goto_0
    iget-boolean v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->P:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 60
    invoke-static {p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->O:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_6

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->N:Ljava/lang/String;

    const-string v1, "br"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    .line 62
    invoke-static {p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto/16 :goto_6

    .line 63
    :cond_2
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->N:Ljava/lang/String;

    const-string v1, "metadata"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_6

    .line 64
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(J)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 65
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->N:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 66
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 67
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->V:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    move v8, v1

    .line 69
    :goto_2
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a()I

    move-result v2

    if-ge v8, v2, :cond_7

    .line 70
    invoke-virtual {p0, v8}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(I)Lcom/google/vr/sdk/widgets/video/deps/eM;

    move-result-object v2

    if-nez p3, :cond_6

    if-eqz v0, :cond_5

    goto :goto_3

    :cond_5
    move v5, v1

    goto :goto_4

    :cond_6
    :goto_3
    const/4 v3, 0x1

    move v5, v3

    :goto_4
    move-wide v3, p1

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v2 .. v7}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(JZLjava/lang/String;Ljava/util/Map;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    .line 73
    invoke-static {p4, p5}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(Ljava/lang/String;Ljava/util/Map;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-static {p1}, Lcom/google/vr/sdk/widgets/video/deps/eO;->a(Landroid/text/SpannableStringBuilder;)V

    .line 74
    :cond_8
    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    .line 75
    iget-object p3, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->W:Ljava/util/HashMap;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/text/SpannableStringBuilder;

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p3, p4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    :cond_9
    :goto_6
    return-void
.end method

.method private a(Ljava/util/Map;Landroid/text/SpannableStringBuilder;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/eP;",
            ">;",
            "Landroid/text/SpannableStringBuilder;",
            "II)V"
        }
    .end annotation

    if-eq p3, p4, :cond_0

    .line 91
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->S:Lcom/google/vr/sdk/widgets/video/deps/eP;

    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->U:[Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/eO;->a(Lcom/google/vr/sdk/widgets/video/deps/eP;[Ljava/lang/String;Ljava/util/Map;)Lcom/google/vr/sdk/widgets/video/deps/eP;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 93
    invoke-static {p2, p3, p4, p1}, Lcom/google/vr/sdk/widgets/video/deps/eO;->a(Landroid/text/SpannableStringBuilder;IILcom/google/vr/sdk/widgets/video/deps/eP;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/eP;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/text/SpannableStringBuilder;",
            ">;)V"
        }
    .end annotation

    .line 81
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->W:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 82
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 83
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->V:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->V:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v4

    .line 84
    :goto_0
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/text/SpannableStringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(Ljava/util/Map;Landroid/text/SpannableStringBuilder;II)V

    .line 85
    :goto_1
    invoke-virtual {p0}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a()I

    move-result v1

    if-ge v4, v1, :cond_0

    .line 86
    invoke-virtual {p0, v4}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(I)Lcom/google/vr/sdk/widgets/video/deps/eM;

    move-result-object v1

    invoke-direct {v1, p1, p2}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(Ljava/util/Map;Ljava/util/Map;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private a(Ljava/util/TreeSet;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeSet<",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .line 32
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->N:Ljava/lang/String;

    const-string v1, "p"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez p2, :cond_0

    if-eqz v0, :cond_2

    .line 34
    :cond_0
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->Q:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    .line 35
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_1
    iget-wide v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->R:J

    cmp-long v3, v1, v3

    if-eqz v3, :cond_2

    .line 37
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_2
    iget-object v1, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->X:Ljava/util/List;

    if-nez v1, :cond_3

    return-void

    :cond_3
    const/4 v1, 0x0

    move v2, v1

    .line 40
    :goto_0
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->X:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_6

    .line 41
    iget-object v3, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->X:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/vr/sdk/widgets/video/deps/eM;

    if-nez p2, :cond_5

    if-eqz v0, :cond_4

    goto :goto_1

    :cond_4
    move v4, v1

    goto :goto_2

    :cond_5
    :goto_1
    const/4 v4, 0x1

    :goto_2
    invoke-direct {v3, p1, v4}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(Ljava/util/TreeSet;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->X:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public a(I)Lcom/google/vr/sdk/widgets/video/deps/eM;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->X:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/vr/sdk/widgets/video/deps/eM;

    return-object p1

    .line 21
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public a(JLjava/util/Map;Ljava/util/Map;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/eP;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/vr/sdk/widgets/video/deps/eN;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/google/vr/sdk/widgets/video/deps/em;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v6, Ljava/util/TreeMap;

    invoke-direct {v6}, Ljava/util/TreeMap;-><init>()V

    .line 46
    iget-object v4, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->T:Ljava/lang/String;

    const/4 v3, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(JZLjava/lang/String;Ljava/util/Map;)V

    .line 47
    invoke-direct {p0, p3, v6}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(Ljava/util/Map;Ljava/util/Map;)V

    .line 48
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-virtual {v6}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map$Entry;

    .line 50
    invoke-interface {p3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/vr/sdk/widgets/video/deps/eN;

    .line 51
    new-instance v10, Lcom/google/vr/sdk/widgets/video/deps/em;

    invoke-interface {p3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0, p3}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(Landroid/text/SpannableStringBuilder;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, v0, Lcom/google/vr/sdk/widgets/video/deps/eN;->c:F

    iget v5, v0, Lcom/google/vr/sdk/widgets/video/deps/eN;->d:I

    iget v6, v0, Lcom/google/vr/sdk/widgets/video/deps/eN;->e:I

    iget v7, v0, Lcom/google/vr/sdk/widgets/video/deps/eN;->b:F

    const/high16 v8, -0x80000000

    iget v9, v0, Lcom/google/vr/sdk/widgets/video/deps/eN;->f:F

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/google/vr/sdk/widgets/video/deps/em;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    invoke-interface {p1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public a(Lcom/google/vr/sdk/widgets/video/deps/eM;)V
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->X:Ljava/util/List;

    if-nez v0, :cond_0

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->X:Ljava/util/List;

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->X:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(J)Z
    .locals 4

    .line 15
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->Q:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->R:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    :cond_0
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->Q:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_1

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->R:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    :cond_1
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->Q:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->R:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_3

    :cond_2
    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->Q:J

    cmp-long v0, v0, p1

    if-gtz v0, :cond_4

    iget-wide v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->R:J

    cmp-long p1, p1, v0

    if-gez p1, :cond_4

    :cond_3
    const/4 p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()[J
    .locals 6

    .line 24
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    const/4 v1, 0x0

    .line 25
    invoke-direct {p0, v0, v1}, Lcom/google/vr/sdk/widgets/video/deps/eM;->a(Ljava/util/TreeSet;Z)V

    .line 26
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    new-array v2, v2, [J

    .line 28
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-int/lit8 v5, v1, 0x1

    .line 29
    aput-wide v3, v2, v1

    move v1, v5

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public c()[Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/google/vr/sdk/widgets/video/deps/eM;->U:[Ljava/lang/String;

    return-object v0
.end method

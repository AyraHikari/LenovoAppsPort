.class Lcom/google/vr/sdk/widgets/video/deps/es$1;
.super Ljava/lang/Object;
.source "SubtitleDecoderFactory.java"

# interfaces
.implements Lcom/google/vr/sdk/widgets/video/deps/es;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/vr/sdk/widgets/video/deps/es;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/vr/sdk/widgets/video/deps/m;)Z
    .locals 1

    .line 2
    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    const-string/jumbo v0, "text/vtt"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "text/x-ssa"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/ttml+xml"

    .line 5
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-mp4-vtt"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-subrip"

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-quicktime-tx3g"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-608"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/x-mp4-cea-608"

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/cea-708"

    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "application/dvbsubs"

    .line 12
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public b(Lcom/google/vr/sdk/widgets/video/deps/m;)Lcom/google/vr/sdk/widgets/video/deps/eq;
    .locals 2

    .line 14
    iget-object v0, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "application/ttml+xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_1
    const-string v1, "application/x-subrip"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "application/cea-708"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_3
    const-string v1, "application/cea-608"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_4
    const-string v1, "application/x-mp4-cea-608"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string/jumbo v1, "text/x-ssa"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_6
    const-string v1, "application/x-quicktime-tx3g"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_7
    const-string/jumbo v1, "text/vtt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_8
    const-string v1, "application/x-mp4-vtt"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_9
    const-string v1, "application/dvbsubs"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 24
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Attempted to create decoder for unsupported format"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 23
    :pswitch_0
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/eE;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eE;-><init>(Ljava/util/List;)V

    return-object v0

    .line 22
    :pswitch_1
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ez;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->B:I

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/ez;-><init>(I)V

    return-object v0

    .line 21
    :pswitch_2
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/ex;

    iget-object v1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->h:Ljava/lang/String;

    iget p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->B:I

    invoke-direct {v0, v1, p1}, Lcom/google/vr/sdk/widgets/video/deps/ex;-><init>(Ljava/lang/String;I)V

    return-object v0

    .line 20
    :pswitch_3
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/eR;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eR;-><init>(Ljava/util/List;)V

    return-object v0

    .line 19
    :pswitch_4
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/eJ;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/eJ;-><init>()V

    return-object p1

    .line 18
    :pswitch_5
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/eL;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/eL;-><init>()V

    return-object p1

    .line 17
    :pswitch_6
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/eU;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/eU;-><init>()V

    return-object p1

    .line 16
    :pswitch_7
    new-instance v0, Lcom/google/vr/sdk/widgets/video/deps/eH;

    iget-object p1, p1, Lcom/google/vr/sdk/widgets/video/deps/m;->j:Ljava/util/List;

    invoke-direct {v0, p1}, Lcom/google/vr/sdk/widgets/video/deps/eH;-><init>(Ljava/util/List;)V

    return-object v0

    .line 15
    :pswitch_8
    new-instance p1, Lcom/google/vr/sdk/widgets/video/deps/eZ;

    invoke-direct {p1}, Lcom/google/vr/sdk/widgets/video/deps/eZ;-><init>()V

    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5091057c -> :sswitch_9
        -0x3d28a9ba -> :sswitch_8
        -0x3be2f26c -> :sswitch_7
        0x2935f49f -> :sswitch_6
        0x310bebca -> :sswitch_5
        0x37713300 -> :sswitch_4
        0x5d578071 -> :sswitch_3
        0x5d578432 -> :sswitch_2
        0x63771bad -> :sswitch_1
        0x64f8068a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.class public Lcom/coremedia/iso/boxes/mdat/SampleList;
.super Ljava/util/AbstractList;
.source "SampleList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/nio/ByteBuffer;",
        ">;"
    }
.end annotation


# instance fields
.field isoFile:Lcom/coremedia/iso/IsoFile;

.field mdatEndCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/coremedia/iso/boxes/mdat/MediaDataBox;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mdatStartCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/coremedia/iso/boxes/mdat/MediaDataBox;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mdats:[Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

.field offsets:[J

.field sizes:[J


# direct methods
.method public constructor <init>(Lcom/coremedia/iso/boxes/TrackBox;)V
    .locals 13

    .line 37
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatStartCache:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatEndCache:Ljava/util/HashMap;

    .line 38
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getIsoFile()Lcom/coremedia/iso/IsoFile;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/mdat/SampleList;->initIsoFile(Lcom/coremedia/iso/IsoFile;)V

    .line 42
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v0

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleSizeBox()Lcom/coremedia/iso/boxes/SampleSizeBox;

    move-result-object v0

    .line 43
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v1

    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/SampleTableBox;->getChunkOffsetBox()Lcom/coremedia/iso/boxes/ChunkOffsetBox;

    move-result-object v1

    .line 44
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getSampleTableBox()Lcom/coremedia/iso/boxes/SampleTableBox;

    move-result-object v2

    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleTableBox;->getSampleToChunkBox()Lcom/coremedia/iso/boxes/SampleToChunkBox;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 47
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/ChunkOffsetBox;->getChunkOffsets()[J

    move-result-object v1

    goto :goto_0

    :cond_0
    new-array v1, v3, [J

    :goto_0
    if-eqz v2, :cond_3

    .line 48
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->getEntries()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    array-length v4, v1

    if-lez v4, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleCount()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    .line 50
    array-length v4, v1

    invoke-virtual {v2, v4}, Lcom/coremedia/iso/boxes/SampleToChunkBox;->blowup(I)[J

    move-result-object v2

    .line 54
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSize()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 55
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleCount()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result v4

    new-array v4, v4, [J

    iput-object v4, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    .line 56
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSize()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Ljava/util/Arrays;->fill([JJ)V

    goto :goto_1

    .line 58
    :cond_1
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/SampleSizeBox;->getSampleSizes()[J

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    .line 60
    :goto_1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    array-length v0, v0

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    move v0, v3

    move v4, v0

    .line 62
    :goto_2
    array-length v5, v2

    if-ge v0, v5, :cond_3

    .line 63
    aget-wide v5, v2, v0

    .line 64
    aget-wide v7, v1, v0

    move v9, v3

    :goto_3
    int-to-long v10, v9

    cmp-long v10, v10, v5

    if-gez v10, :cond_2

    .line 66
    iget-object v10, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    aget-wide v10, v10, v4

    .line 67
    iget-object v12, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    aput-wide v7, v12, v4

    add-long/2addr v7, v10

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 77
    :cond_3
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v0

    const-class v1, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    invoke-interface {v0, v1}, Lcom/coremedia/iso/boxes/ContainerBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 79
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    .line 80
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 81
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;

    const-class v2, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/fragment/MovieExtendsBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    .line 82
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;

    .line 83
    invoke-virtual {v2}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getTrackId()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-nez v4, :cond_4

    .line 84
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getIsoFile()Lcom/coremedia/iso/IsoFile;

    move-result-object v4

    const-class v5, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual {v4, v5}, Lcom/coremedia/iso/IsoFile;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .line 85
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/TrackBox;->getTrackHeaderBox()Lcom/coremedia/iso/boxes/TrackHeaderBox;

    move-result-object v6

    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/TrackHeaderBox;->getTrackId()J

    move-result-wide v6

    invoke-virtual {p0, v5, v6, v7, v2}, Lcom/coremedia/iso/boxes/mdat/SampleList;->getOffsets(Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;JLcom/coremedia/iso/boxes/fragment/TrackExtendsBox;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_4

    .line 90
    :cond_5
    iget-object p1, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    if-nez p1, :cond_7

    :cond_6
    new-array p1, v3, [J

    .line 91
    iput-object p1, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    new-array p1, v3, [J

    .line 92
    iput-object p1, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    .line 95
    :cond_7
    invoke-direct {p0, v1}, Lcom/coremedia/iso/boxes/mdat/SampleList;->splitToArrays(Ljava/util/Map;)V

    :cond_8
    return-void
.end method

.method public constructor <init>(Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;)V
    .locals 7

    .line 117
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatStartCache:Ljava/util/HashMap;

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatEndCache:Ljava/util/HashMap;

    const/4 v0, 0x0

    new-array v1, v0, [J

    .line 118
    iput-object v1, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    new-array v0, v0, [J

    .line 119
    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getIsoFile()Lcom/coremedia/iso/IsoFile;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/coremedia/iso/boxes/mdat/SampleList;->initIsoFile(Lcom/coremedia/iso/IsoFile;)V

    .line 123
    iget-object v1, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->isoFile:Lcom/coremedia/iso/IsoFile;

    const-class v2, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    invoke-virtual {v1, v2}, Lcom/coremedia/iso/IsoFile;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 125
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v2

    .line 126
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;

    .line 127
    invoke-virtual {v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getTrackFragmentHeaderBoxes()Ljava/util/List;

    move-result-object v4

    .line 128
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    .line 129
    invoke-virtual {v5}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v5

    cmp-long v5, v5, v2

    if-nez v5, :cond_1

    const/4 v5, 0x0

    .line 130
    invoke-virtual {p0, v1, v2, v3, v5}, Lcom/coremedia/iso/boxes/mdat/SampleList;->getOffsets(Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;JLcom/coremedia/iso/boxes/fragment/TrackExtendsBox;)Ljava/util/Map;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_0

    .line 134
    :cond_2
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/mdat/SampleList;->splitToArrays(Ljava/util/Map;)V

    return-void
.end method

.method private initIsoFile(Lcom/coremedia/iso/IsoFile;)V
    .locals 10

    .line 138
    iput-object p1, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->isoFile:Lcom/coremedia/iso/IsoFile;

    .line 141
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 142
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->isoFile:Lcom/coremedia/iso/IsoFile;

    invoke-virtual {v0}, Lcom/coremedia/iso/IsoFile;->getBoxes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/Box;

    .line 143
    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v4

    .line 144
    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mdat"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 145
    instance-of v6, v3, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    if-eqz v6, :cond_0

    .line 146
    check-cast v3, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->getHeader()Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    int-to-long v6, v6

    add-long/2addr v6, v1

    .line 147
    iget-object v8, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatStartCache:Ljava/util/HashMap;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v8, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v8, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatEndCache:Ljava/util/HashMap;

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v8, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-virtual {p1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 151
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Sample need to be in mdats and mdats need to be instanceof MediaDataBox"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-long/2addr v1, v4

    goto :goto_0

    .line 156
    :cond_2
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    new-array v0, v0, [Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    iput-object p1, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdats:[Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    return-void
.end method

.method private splitToArrays(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 103
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 105
    iget-object v1, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    array-length v1, v1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v1, v2

    new-array v1, v1, [J

    .line 106
    iget-object v2, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 107
    iget-object v2, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    array-length v2, v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    new-array v2, v2, [J

    .line 108
    iget-object v3, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    array-length v5, v3

    invoke-static {v3, v4, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_0

    .line 110
    iget-object v3, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    array-length v3, v3

    add-int/2addr v3, v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v2, v3

    .line 111
    iget-object v3, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    array-length v3, v3

    add-int/2addr v3, v4

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    aput-wide v5, v1, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iput-object v1, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    .line 114
    iput-object v2, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    return-void
.end method


# virtual methods
.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/mdat/SampleList;->get(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public get(I)Ljava/nio/ByteBuffer;
    .locals 12

    .line 169
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    aget-wide v0, v0, p1

    .line 170
    iget-object v2, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    aget-wide v2, v2, p1

    invoke-static {v2, v3}, Lcom/googlecode/mp4parser/util/CastUtils;->l2i(J)I

    move-result p1

    .line 172
    iget-object v2, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdats:[Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 173
    iget-object v6, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatStartCache:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 174
    iget-object v8, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->mdatEndCache:Ljava/util/HashMap;

    invoke-virtual {v8, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Long;

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    cmp-long v10, v6, v0

    if-gtz v10, :cond_0

    int-to-long v10, p1

    add-long/2addr v10, v0

    cmp-long v8, v10, v8

    if-gtz v8, :cond_0

    sub-long/2addr v0, v6

    .line 176
    invoke-virtual {v5, v0, v1, p1}, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->getContent(JI)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 180
    :cond_1
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The sample with offset "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " and size "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is NOT located within an mdat"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getOffsetKeys()[J
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->offsets:[J

    return-object v0
.end method

.method getOffsets(Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;JLcom/coremedia/iso/boxes/fragment/TrackExtendsBox;)Ljava/util/Map;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;",
            "J",
            "Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 185
    const-class v1, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    move-object/from16 v2, p1

    invoke-virtual {v2, v1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v1

    .line 186
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    .line 187
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getTrackId()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-nez v4, :cond_5

    .line 189
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasBaseDataOffset()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 190
    invoke-virtual {v3}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v4

    invoke-virtual {v4}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getBaseDataOffset()J

    move-result-wide v4

    goto :goto_1

    .line 192
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentBox;->getOffset()J

    move-result-wide v4

    .line 195
    :goto_1
    const-class v6, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    invoke-virtual {v3, v6}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getBoxes(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;

    .line 196
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getDataOffset()I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v7, v4

    .line 197
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getParent()Lcom/coremedia/iso/boxes/ContainerBox;

    move-result-object v9

    check-cast v9, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;

    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentBox;->getTrackFragmentHeaderBox()Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;

    move-result-object v9

    const-wide/16 v10, 0x0

    .line 200
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->getEntries()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;

    .line 202
    invoke-virtual {v6}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox;->isSampleSizePresent()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 203
    invoke-virtual {v13}, Lcom/coremedia/iso/boxes/fragment/TrackRunBox$Entry;->getSampleSize()J

    move-result-wide v13

    add-long v15, v10, v7

    .line 204
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    move-object/from16 v16, v1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v15, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    add-long/2addr v10, v13

    goto :goto_4

    :cond_2
    move-object/from16 v16, v1

    .line 207
    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->hasDefaultSampleSize()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 208
    invoke-virtual {v9}, Lcom/coremedia/iso/boxes/fragment/TrackFragmentHeaderBox;->getDefaultSampleSize()J

    move-result-wide v13

    add-long v17, v10, v7

    .line 209
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_3
    if-eqz p4, :cond_4

    .line 215
    invoke-virtual/range {p4 .. p4}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->getDefaultSampleSize()J

    move-result-wide v13

    add-long v17, v10, v7

    .line 216
    invoke-static/range {v17 .. v18}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    invoke-interface {v0, v1, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :goto_4
    move-object/from16 v1, v16

    goto :goto_2

    .line 213
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "File doesn\'t contain trex box but track fragments aren\'t fully self contained. Cannot determine sample size."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    move-object/from16 v16, v1

    move-object/from16 v1, v16

    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/SampleList;->sizes:[J

    array-length v0, v0

    return v0
.end method

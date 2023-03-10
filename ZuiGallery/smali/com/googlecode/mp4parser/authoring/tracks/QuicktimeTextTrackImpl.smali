.class public Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;
.super Lcom/googlecode/mp4parser/authoring/AbstractTrack;
.source "QuicktimeTextTrackImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;
    }
.end annotation


# instance fields
.field sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

.field subs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;",
            ">;"
        }
    .end annotation
.end field

.field trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Lcom/googlecode/mp4parser/authoring/AbstractTrack;-><init>()V

    .line 41
    new-instance v0, Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    .line 43
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->subs:Ljava/util/List;

    .line 50
    new-instance v0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;-><init>()V

    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    .line 51
    new-instance v0, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;-><init>()V

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/apple/QuicktimeTextSampleEntry;->setDataReferenceIndex(I)V

    .line 53
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 56
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setCreationTime(Ljava/util/Date;)V

    .line 57
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setModificationTime(Ljava/util/Date;)V

    .line 58
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/googlecode/mp4parser/authoring/TrackMetaData;->setTimescale(J)V

    return-void
.end method


# virtual methods
.method public getCompositionTimeEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/CompositionTimeToSample$Entry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecodingTimeEntries()Ljava/util/List;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;",
            ">;"
        }
    .end annotation

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 96
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->subs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;

    .line 97
    iget-wide v7, v6, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->from:J

    sub-long/2addr v7, v4

    cmp-long v4, v7, v2

    const-wide/16 v9, 0x1

    if-lez v4, :cond_0

    .line 99
    new-instance v4, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    invoke-direct {v4, v9, v10, v7, v8}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-ltz v4, :cond_1

    .line 103
    :goto_1
    new-instance v4, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;

    iget-wide v7, v6, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->to:J

    iget-wide v11, v6, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->from:J

    sub-long/2addr v7, v11

    invoke-direct {v4, v9, v10, v7, v8}, Lcom/coremedia/iso/boxes/TimeToSampleBox$Entry;-><init>(JJ)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-wide v4, v6, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->to:J

    goto :goto_0

    .line 101
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Subtitle display times may not intersect"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "text"

    return-object v0
.end method

.method public getMediaHeaderBox()Lcom/coremedia/iso/boxes/Box;
    .locals 2

    .line 156
    new-instance v0, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderAtom;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderAtom;-><init>()V

    .line 157
    new-instance v1, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/apple/BaseMediaInfoAtom;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderAtom;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    .line 158
    new-instance v1, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;

    invoke-direct {v1}, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderTextAtom;-><init>()V

    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/apple/GenericMediaHeaderAtom;->addBox(Lcom/coremedia/iso/boxes/Box;)V

    return-object v0
.end method

.method public getSampleDependencies()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/SampleDependencyTypeBox$Entry;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSampleDescriptionBox()Lcom/coremedia/iso/boxes/SampleDescriptionBox;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->sampleDescriptionBox:Lcom/coremedia/iso/boxes/SampleDescriptionBox;

    return-object v0
.end method

.method public getSamples()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    const-string v0, "UTF-8"

    .line 65
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 67
    iget-object v2, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->subs:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const-wide/16 v3, 0x0

    move-wide v5, v3

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;

    .line 68
    iget-wide v8, v7, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->from:J

    sub-long/2addr v8, v5

    cmp-long v5, v8, v3

    if-lez v5, :cond_0

    const/4 v5, 0x2

    new-array v5, v5, [B

    .line 70
    fill-array-data v5, :array_0

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    if-ltz v5, :cond_1

    .line 74
    :goto_1
    new-instance v5, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v5}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 75
    new-instance v6, Ljava/io/DataOutputStream;

    invoke-direct {v6, v5}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 77
    :try_start_0
    iget-object v8, v7, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->text:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    array-length v8, v8

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 78
    iget-object v8, v7, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->text:Ljava/lang/String;

    invoke-virtual {v8, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 79
    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    invoke-virtual {v5}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    invoke-static {v5}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-wide v5, v7, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;->to:J

    goto :goto_0

    .line 81
    :catch_0
    new-instance v0, Ljava/lang/Error;

    const-string v1, "VM is broken. Does not support UTF-8"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_1
    new-instance v0, Ljava/lang/Error;

    const-string v1, "Subtitle display times may not intersect"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    return-object v1

    :array_0
    .array-data 1
        0x0t
        0x0t
    .end array-data
.end method

.method public getSubs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl$Line;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->subs:Ljava/util/List;

    return-object v0
.end method

.method public getSubsampleInformationBox()Lcom/coremedia/iso/boxes/SubSampleInformationBox;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSyncSamples()[J
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrackMetaData()Lcom/googlecode/mp4parser/authoring/TrackMetaData;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/QuicktimeTextTrackImpl;->trackMetaData:Lcom/googlecode/mp4parser/authoring/TrackMetaData;

    return-object v0
.end method

.class public Lcom/googlecode/mp4parser/boxes/apple/TimeCodeBox;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "TimeCodeBox.java"


# instance fields
.field data:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string/jumbo v0, "tmcd"

    .line 28
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 42
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/apple/TimeCodeBox;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    const/16 v0, 0x12

    new-array v0, v0, [B

    .line 43
    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/TimeCodeBox;->data:[B

    .line 44
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 45
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/apple/TimeCodeBox;->_parseChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .locals 1

    .line 50
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/apple/TimeCodeBox;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    .line 51
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/TimeCodeBox;->data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 52
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/apple/TimeCodeBox;->_writeChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContentSize()J
    .locals 5

    .line 34
    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/TimeCodeBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x1a

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/coremedia/iso/boxes/Box;

    .line 35
    invoke-interface {v3}, Lcom/coremedia/iso/boxes/Box;->getSize()J

    move-result-wide v3

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

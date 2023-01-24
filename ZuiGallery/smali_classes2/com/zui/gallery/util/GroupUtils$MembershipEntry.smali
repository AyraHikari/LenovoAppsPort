.class public Lcom/zui/gallery/util/GroupUtils$MembershipEntry;
.super Ljava/lang/Object;
.source "GroupUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zui/gallery/util/GroupUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MembershipEntry"
.end annotation


# instance fields
.field fileLength:J

.field groupId:I

.field id:I

.field path:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>(ILjava/lang/String;IIJ)V
    .locals 0

    .line 1266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1267
    iput p1, p0, Lcom/zui/gallery/util/GroupUtils$MembershipEntry;->id:I

    .line 1268
    iput-object p2, p0, Lcom/zui/gallery/util/GroupUtils$MembershipEntry;->path:Ljava/lang/String;

    .line 1269
    iput p3, p0, Lcom/zui/gallery/util/GroupUtils$MembershipEntry;->groupId:I

    .line 1270
    iput p4, p0, Lcom/zui/gallery/util/GroupUtils$MembershipEntry;->type:I

    .line 1271
    iput-wide p5, p0, Lcom/zui/gallery/util/GroupUtils$MembershipEntry;->fileLength:J

    return-void
.end method

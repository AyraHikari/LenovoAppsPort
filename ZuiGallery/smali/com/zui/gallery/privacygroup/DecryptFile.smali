.class public Lcom/zui/gallery/privacygroup/DecryptFile;
.super Ljava/lang/Object;
.source "DecryptFile.java"


# instance fields
.field public filePath:Ljava/lang/String;

.field isVideo:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/zui/gallery/privacygroup/DecryptFile;->filePath:Ljava/lang/String;

    .line 11
    iput-boolean p2, p0, Lcom/zui/gallery/privacygroup/DecryptFile;->isVideo:Z

    return-void
.end method


# virtual methods
.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/zui/gallery/privacygroup/DecryptFile;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getIsVideo()Z
    .locals 1

    .line 27
    iget-boolean v0, p0, Lcom/zui/gallery/privacygroup/DecryptFile;->isVideo:Z

    return v0
.end method

.method public setFilePath(Ljava/lang/String;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lcom/zui/gallery/privacygroup/DecryptFile;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setIsVideo(Z)V
    .locals 0

    .line 23
    iput-boolean p1, p0, Lcom/zui/gallery/privacygroup/DecryptFile;->isVideo:Z

    return-void
.end method

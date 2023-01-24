.class public Lcom/zui/gallery/filtershow/tools/XmpPresets;
.super Ljava/lang/Object;
.source "XmpPresets.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "XmpPresets"

.field public static final XMP_FILTERSTACK:Ljava/lang/String; = "filterstack"

.field public static final XMP_GOOGLE_FILTER_NAMESPACE:Ljava/lang/String; = "http://ns.google.com/photos/1.0/filter/"

.field public static final XMP_GOOGLE_FILTER_PREFIX:Ljava/lang/String; = "AFltr"

.field public static final XMP_SRC_FILE_URI:Ljava/lang/String; = "SourceFileUri"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    :try_start_0
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->getSchemaRegistry()Lcom/adobe/xmp/XMPSchemaRegistry;

    move-result-object v0

    const-string v1, "http://ns.google.com/photos/1.0/filter/"

    const-string v2, "AFltr"

    invoke-interface {v0, v1, v2}, Lcom/adobe/xmp/XMPSchemaRegistry;->registerNamespace(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/adobe/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "XmpPresets"

    const-string v2, "Register XMP name space failed"

    .line 57
    invoke-static {v1, v2, v0}, Lcom/zui/gallery/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static extractXMPData(Landroid/content/Context;Lcom/zui/gallery/filtershow/imageshow/MasterImage;)Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;
    .locals 4

    const-string p0, "http://ns.google.com/photos/1.0/filter/"

    .line 144
    new-instance p1, Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;

    invoke-direct {p1}, Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;-><init>()V

    const/4 v0, 0x0

    .line 151
    :try_start_0
    invoke-static {v0}, Lcom/zui/gallery/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 155
    throw p0

    .line 154
    :catch_0
    invoke-static {v0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object v1, v0

    :goto_0
    if-nez v1, :cond_0

    return-object v0

    :cond_0
    :try_start_1
    const-string v2, "SourceFileUri"

    .line 162
    invoke-interface {v1, p0, v2}, Lcom/adobe/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "filterstack"

    .line 166
    invoke-interface {v1, p0, v3}, Lcom/adobe/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 169
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 170
    iput-object v1, p1, Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;->originalimage:Landroid/net/Uri;

    .line 172
    new-instance v1, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {v1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>()V

    iput-object v1, p1, Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;->preset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 173
    iput-object p0, p1, Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;->presetString:Ljava/lang/String;

    .line 174
    iget-object v1, p1, Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;->preset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {v1, p0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->readJsonFromString(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Lcom/adobe/xmp/XMPException; {:try_start_1 .. :try_end_1} :catch_1

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    return-object p1

    :catch_1
    move-exception p0

    .line 181
    invoke-virtual {p0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    :cond_2
    return-object v0
.end method

.method public static extractXMPData(Landroid/content/Context;Lcom/zui/gallery/filtershow/imageshow/MasterImage;Landroid/net/Uri;)Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;
    .locals 3

    const-string p1, "http://ns.google.com/photos/1.0/filter/"

    .line 94
    new-instance v0, Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;

    invoke-direct {v0}, Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;-><init>()V

    const/4 v1, 0x0

    .line 99
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 100
    :try_start_1
    invoke-static {p0}, Lcom/zui/gallery/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    :goto_0
    invoke-static {v1}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 104
    throw p1

    :catch_0
    move-object p0, v1

    .line 103
    :catch_1
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    move-object p2, v1

    :goto_1
    if-nez p2, :cond_0

    return-object v1

    :cond_0
    :try_start_2
    const-string p0, "SourceFileUri"

    .line 111
    invoke-interface {p2, p1, p0}, Lcom/adobe/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    const-string v2, "filterstack"

    .line 115
    invoke-interface {p2, p1, v2}, Lcom/adobe/xmp/XMPMeta;->getPropertyString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 118
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    .line 119
    iput-object p0, v0, Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;->originalimage:Landroid/net/Uri;

    .line 121
    new-instance p0, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-direct {p0}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;-><init>()V

    iput-object p0, v0, Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;->preset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    .line 122
    iput-object p1, v0, Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;->presetString:Ljava/lang/String;

    .line 123
    iget-object p0, v0, Lcom/zui/gallery/filtershow/tools/XmpPresets$XMresults;->preset:Lcom/zui/gallery/filtershow/pipeline/ImagePreset;

    invoke-virtual {p0, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->readJsonFromString(Ljava/lang/String;)Z

    move-result p0
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_2

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    return-object v0

    :catch_2
    move-exception p0

    .line 130
    invoke-virtual {p0}, Lcom/adobe/xmp/XMPException;->printStackTrace()V

    :cond_2
    return-object v1
.end method

.method public static writeFilterXMP(Landroid/content/Context;Landroid/net/Uri;Ljava/io/File;Lcom/zui/gallery/filtershow/pipeline/ImagePreset;)V
    .locals 4

    const-string v0, "Write XMP meta to file failed:"

    const-string v1, "XmpPresets"

    const-string v2, "http://ns.google.com/photos/1.0/filter/"

    const/4 v3, 0x0

    .line 66
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 67
    :try_start_1
    invoke-static {p0}, Lcom/zui/gallery/util/XmpUtilHelper;->extractXMPMeta(Ljava/io/InputStream;)Lcom/adobe/xmp/XMPMeta;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v3, p0

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 71
    :goto_0
    invoke-static {v3}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    .line 72
    throw p1

    :catch_0
    move-object p0, v3

    .line 71
    :catch_1
    :goto_1
    invoke-static {p0}, Lcom/zui/gallery/common/Utils;->closeSilently(Ljava/io/Closeable;)V

    if-nez v3, :cond_0

    .line 75
    invoke-static {}, Lcom/adobe/xmp/XMPMetaFactory;->create()Lcom/adobe/xmp/XMPMeta;

    move-result-object v3

    :cond_0
    :try_start_2
    const-string p0, "SourceFileUri"

    .line 79
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    .line 78
    invoke-interface {v3, v2, p0, p1}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "filterstack"

    const-string p1, "Saved"

    .line 81
    invoke-virtual {p3, p1}, Lcom/zui/gallery/filtershow/pipeline/ImagePreset;->getJsonString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 80
    invoke-interface {v3, v2, p0, p1}, Lcom/adobe/xmp/XMPMeta;->setProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lcom/adobe/xmp/XMPException; {:try_start_2 .. :try_end_2} :catch_2

    .line 87
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v3}, Lcom/zui/gallery/util/XmpUtilHelper;->writeXMPMeta(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 88
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 83
    :catch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/zui/gallery/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

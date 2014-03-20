.class public Lcom/wuxianlin/stocksettings/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fileExists(Ljava/lang/String;)Z
    .locals 1
    .parameter "filename"

    .prologue
    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public static fileWritable(Ljava/lang/String;)Z
    .locals 1
    .parameter "filename"

    .prologue
    .line 76
    invoke-static {p0}, Lcom/wuxianlin/stocksettings/Utils;->fileExists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getFileValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "filename"
    .parameter "defValue"

    .prologue
    .line 108
    invoke-static {p0}, Lcom/wuxianlin/stocksettings/Utils;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 109
    .local v0, fileValue:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 112
    .end local v0           #fileValue:Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0       #fileValue:Ljava/lang/String;
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public static getFileValueAsBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "filename"
    .parameter "defValue"

    .prologue
    .line 100
    invoke-static {p0}, Lcom/wuxianlin/stocksettings/Utils;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, fileValue:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 102
    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 104
    :goto_0
    return v1

    .line 102
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, p1

    .line 104
    goto :goto_0
.end method

.method public static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "filename"

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v3, 0x0

    .line 83
    .local v3, line:Ljava/lang/String;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x400

    invoke-direct {v1, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v3

    .line 88
    if-eqz v1, :cond_0

    .line 90
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    move-object v4, v3

    .line 96
    :cond_1
    :goto_1
    return-object v4

    .line 85
    :catch_0
    move-exception v2

    .line 86
    .local v2, e:Ljava/io/IOException;
    :goto_2
    const/4 v4, 0x0

    .line 88
    if-eqz v0, :cond_1

    .line 90
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 91
    :catch_1
    move-exception v5

    goto :goto_1

    .line 88
    .end local v2           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v0, :cond_2

    .line 90
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 93
    :cond_2
    :goto_4
    throw v4

    .line 91
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_2
    move-exception v4

    goto :goto_0

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catch_3
    move-exception v5

    goto :goto_4

    .line 88
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_3

    .line 85
    .end local v0           #br:Ljava/io/BufferedReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    :catch_4
    move-exception v2

    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static writeColor(Ljava/lang/String;I)V
    .locals 4
    .parameter "filename"
    .parameter "value"

    .prologue
    .line 54
    int-to-long v0, p1

    const-wide/16 v2, 0x2

    mul-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wuxianlin/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method public static writeGamma(Ljava/lang/String;I)V
    .locals 1
    .parameter "filename"
    .parameter "value"

    .prologue
    .line 63
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/wuxianlin/stocksettings/Utils;->writeValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public static writeValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "filename"
    .parameter "value"

    .prologue
    .line 36
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 37
    .local v1, fos:Ljava/io/FileOutputStream;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 38
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->flush()V

    .line 39
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 45
    .end local v1           #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    .line 41
    .local v0, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 42
    .end local v0           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v0

    .line 43
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
